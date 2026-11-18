#!/usr/bin/env bash

# Builds the AngelScript files the AngelScript converter generated with the ascheck host (AngelScript 2.39.0 engine,
# C:\angelscript_2.39.0\build). AngelScript has no imports: the hand written runtime, the AngelScript sources of the
# dependencies (META-INF/angelscript/src of their jars) and this project are copied to one tree and every file is a
# script section of ONE module, so declarations see each other in any order. This project's sources are written to
# <output>/src for the projects that depend on it.
# A dependency of a dependency that Maven does not add (an optional dependency is not transitive like Java) can be
# missing, so only errors in this project's own files fail the build.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No AngelScript sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
tree="$object_dir/tree"
mkdir -p "$output_dir/src" "$tree"
cp -R "$source_dir/." "$output_dir/src/"
cp -R "$runtime_dir/." "$tree/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$tree/"
fi
cp -R "$source_dir/." "$tree/"

# This project's files (relative paths) are the only ones whose errors fail the build
own="$object_dir/own-files.txt"
(cd "$source_dir" && find . -type f -name '*.as' | sed 's|^\./||' | sort) > "$own"
echo "AngelScript files: $(wc -l < "$own")"

# A deep project folder plus a deep package can pass the Windows 260 character path limit, so the build runs in a
# short temporary copy of the tree
short_tree="$(mktemp -d /tmp/angelXXXXXX)"
trap 'rm -rf "$short_tree"' EXIT
cp -R "$tree/." "$short_tree/"
cd "$short_tree" || exit 1
find . -type f -name '*.as' | sed 's|^\./||' | sort > jsections.txt
cp jsections.txt "$object_dir/"

output="$("$compiler" "${compiler_flags[@]}" @jsections.txt 2>&1 | tr -d '\r')"
status=$?
echo "$output" > "$object_dir/ascheck.log"
# The errors with the INFO line before each (the function being compiled)
errors="$(echo "$output" | grep -E ' : ERR  ?: ' || true)"
own_errors="$(echo "$errors" | while IFS= read -r line; do
    [ -z "$line" ] && continue
    section="${line%% (*}"
    while IFS= read -r file; do
        case "$section" in
            */"$file") echo "$line"; break;;
        esac
    done < "$own"
done)"
echo "$errors" | head -100
total="$(echo "$errors" | grep -c ' : ERR' || true)"
own_total="$(echo "$own_errors" | grep -c ' : ERR' || true)"
echo "AngelScript errors: $total (this project: $own_total)"
if [ -z "$own_errors" ]; then
    echo "AngelScript built: $artifact"
    exit 0
fi
echo "AngelScript build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
