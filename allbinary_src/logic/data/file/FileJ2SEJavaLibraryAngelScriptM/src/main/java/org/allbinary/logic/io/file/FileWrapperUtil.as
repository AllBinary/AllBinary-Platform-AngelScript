/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file

class FileWrapperUtil : JObjectBase
{

    FileWrapperUtil@ jinit_FileWrapperUtil()
    {
        return this;
    }
}

namespace FileWrapperUtil
{
    

    AbFile@[]@ wrapFiles(JObject@[]@ files)
    {
        try {
            AbFile@[]@ abFileArray = array<AbFile@>(int(files.length()));
            for (int index = int(files.length()) - 1; index >= 0; index--) {
                @abFileArray[index] = AbFile().jinit_AbFile(cast<File>(files[index]));
            }
            return abFileArray;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e);
            return array<AbFile@>(0);
            }
            else { jthrow(jex0); }
        }
        return null;
    }
    

    AbFile@ wrapFile(File@ file)
    {
        try {
            return AbFile().jinit_AbFile(file);
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            PreLogUtil::putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e);
            return AbFile::NULL_FILE;
            }
            else { jthrow(jex1); }
        }
        return null;
    }
}

