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

class AbFile : JObjectBase, AbFileInterface
{
    File@ file;
    

    AbFile@ jinit_AbFile(File@ file)
    {
        @this.file = file;
        return this;
    }
    

    File@ getFile()
    {
        return this.file;
    }
    

    string getName()
    {
        return this.file.getName();
    }
    

    string getParent()
    {
        return this.file.getParent();
    }
    

    JObject@ getParentFile()
    {
        return this.file.getParentFile();
    }
    

    string getPath()
    {
        return this.file.getPath();
    }
    

    bool isAbsolute()
    {
        return this.file.isAbsolute();
    }
    

    string getAbsolutePath()
    {
        return this.file.getAbsolutePath();
    }
    

    JObject@ getAbsoluteFile()
    {
        return this.file.getAbsoluteFile();
    }
    

    string getCanonicalPath()
    {
        return this.file.getCanonicalPath();
    }
    

    JObject@ getCanonicalFile()
    {
        return this.file.getCanonicalFile();
    }
    

    URI@ toURI()
    {
        return this.file.toURI();
    }
    

    bool canRead()
    {
        return this.file.canRead();
    }
    

    bool canWrite()
    {
        return this.file.canWrite();
    }
    

    bool exists()
    {
        return this.file.exists();
    }
    

    bool isDirectory()
    {
        return this.file.isDirectory();
    }
    

    bool isFile()
    {
        return this.file.isFile();
    }
    

    bool isHidden()
    {
        return this.file.isHidden();
    }
    

    int64 lastModified()
    {
        return this.file.lastModified();
    }
    

    int64 length()
    {
        return int64(this.file.length());
    }
    

    bool createNewFile()
    {
        return this.file.createNewFile();
    }
    

    bool delete()
    {
        return this.file.delete();
    }
    

    void deleteOnExit()
    {
        this.file.deleteOnExit();
    }
    

    string[]@ list()
    {
        return this.file.list();
    }
    

    string[]@ listWithFilter(FilenameFilter@ filter)
    {
        return this.file.list(filter);
    }
    

    JObject@[]@ listFiles()
    {
        return jarrayOf_JObject(this.file.listFiles());
    }
    

    JObject@[]@ listFilesFileNameFilter(FilenameFilter@ filter)
    {
        return jarrayOf_JObject(this.file.listFiles(filter));
    }
    

    JObject@[]@ listFilesFileFilter(FileFilter@ filter)
    {
        return jarrayOf_JObject(this.file.listFiles(filter));
    }
    

    bool mkdir()
    {
        return this.file.mkdir();
    }
    

    bool mkdirs()
    {
        return this.file.mkdirs();
    }
    

    bool renameTo(AbFile@ dest)
    {
        return this.file.renameTo(dest.getFile());
    }
    

    bool setLastModified(int64 time)
    {
        return this.file.setLastModified(time);
    }
    

    bool setReadOnly()
    {
        return this.file.setReadOnly();
    }
    

    bool setWritable(bool writable, bool ownerOnly)
    {
        return this.file.setExecutable(writable, ownerOnly);
    }
    

    bool setWritable(bool writable)
    {
        return this.file.setWritable(writable);
    }
    

    bool setReadable(bool readable, bool ownerOnly)
    {
        return this.file.setReadable(readable, ownerOnly);
    }
    

    bool setReadable(bool readable)
    {
        return this.file.setReadable(readable);
    }
    

    bool setExecutable(bool executable, bool ownerOnly)
    {
        return this.file.setExecutable(executable, ownerOnly);
    }
    

    bool setExecutable(bool executable)
    {
        return this.file.setExecutable(executable);
    }
    

    bool canExecute()
    {
        return this.file.canExecute();
    }
    

    int64 getTotalSpace()
    {
        return this.file.getTotalSpace();
    }
    

    int64 getFreeSpace()
    {
        return this.file.getFreeSpace();
    }
    

    int64 getUsableSpace()
    {
        return this.file.getUsableSpace();
    }
    

    int compareTo(File@ pathname)
    {
        return this.file.compareTo(pathname);
    }
    

    bool equals(JObject@ obj)
    {
        return TsUtil::getInstance().equalsNotstring(this.file, obj);
    }
    

    int hashCode()
    {
        return this.file.hashCode();
    }
    

    string toString()
    {
        return this.file.toString();
    }
}

namespace AbFile
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_FILE = AbFile::createAbFileFromRawPath(StringUtil::getInstance().EMPTY_STRING);
    }

    AbFile@ jcell_NULL_FILE;
    AbFile@ get_NULL_FILE() property { jclinit(); return jcell_NULL_FILE; }
    void set_NULL_FILE(AbFile@ value) property { jclinit(); @jcell_NULL_FILE = value; }
    

    AbFile@ createAbFileWithChild(AbFile@ file, string childPathName)
    {
        return AbFile().jinit_AbFile(File().jinit_File(file.getFile(), childPathName));
    }
    

    AbFile@ createAbFile(string filePath)
    {
        return AbFile().jinit_AbFile(File().jinit_File(AbPath().jinit_AbPath(filePath, StringUtil::getInstance().EMPTY_STRING).toFileSystemString()));
    }
    

    AbFile@ createAbFilePathAndName(string filePath, string fileName)
    {
        return AbFile().jinit_AbFile(File().jinit_File(AbPath().jinit_AbPath(filePath, StringUtil::getInstance().EMPTY_STRING).toFileSystemString(), fileName));
    }
    

    AbFile@ createAbFileFromAbPath(AbPath@ abPath)
    {
        return AbFile().jinit_AbFile(File().jinit_File(abPath.toFileSystemString()));
    }
    

    AbFile@ createAbFileFromRawPath(string filePath)
    {
        return AbFile().jinit_AbFile(File().jinit_File(filePath));
    }
}

