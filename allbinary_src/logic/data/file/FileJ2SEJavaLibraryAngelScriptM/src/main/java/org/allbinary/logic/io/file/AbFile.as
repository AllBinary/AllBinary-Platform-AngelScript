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
    File@ file_AbFile;
    

    AbFile@ jinit_AbFile(File@ file)
    {
        @this.file_AbFile = file;
        return this;
    }
    

    File@ getFile()
    {
        return this.file_AbFile;
    }
    

    string getName()
    {
        return this.file_AbFile.getName();
    }
    

    string getParent()
    {
        return this.file_AbFile.getParent();
    }
    

    JObject@ getParentFile()
    {
        return this.file_AbFile.getParentFile();
    }
    

    string getPath()
    {
        return this.file_AbFile.getPath();
    }
    

    bool isAbsolute()
    {
        return this.file_AbFile.isAbsolute();
    }
    

    string getAbsolutePath()
    {
        return this.file_AbFile.getAbsolutePath();
    }
    

    JObject@ getAbsoluteFile()
    {
        return this.file_AbFile.getAbsoluteFile();
    }
    

    string getCanonicalPath()
    {
        return this.file_AbFile.getCanonicalPath();
    }
    

    JObject@ getCanonicalFile()
    {
        return this.file_AbFile.getCanonicalFile();
    }
    

    URI@ toURI()
    {
        return this.file_AbFile.toURI();
    }
    

    bool canRead()
    {
        return this.file_AbFile.canRead();
    }
    

    bool canWrite()
    {
        return this.file_AbFile.canWrite();
    }
    

    bool exists()
    {
        return this.file_AbFile.exists();
    }
    

    bool isDirectory()
    {
        return this.file_AbFile.isDirectory();
    }
    

    bool isFile()
    {
        return this.file_AbFile.isFile();
    }
    

    bool isHidden()
    {
        return this.file_AbFile.isHidden();
    }
    

    int64 lastModified()
    {
        return this.file_AbFile.lastModified();
    }
    

    int64 length()
    {
        return int64(this.file_AbFile.length());
    }
    

    bool createNewFile()
    {
        return this.file_AbFile.createNewFile();
    }
    

    bool delete()
    {
        return this.file_AbFile.delete();
    }
    

    void deleteOnExit()
    {
        this.file_AbFile.deleteOnExit();
    }
    

    string[]@ list()
    {
        return this.file_AbFile.list();
    }
    

    string[]@ listWithFilter(FilenameFilter@ filter)
    {
        return this.file_AbFile.list(filter);
    }
    

    JObject@[]@ listFiles()
    {
        return jarrayOf_JObject(this.file_AbFile.listFiles());
    }
    

    JObject@[]@ listFilesFileNameFilter(FilenameFilter@ filter)
    {
        return jarrayOf_JObject(this.file_AbFile.listFiles(filter));
    }
    

    JObject@[]@ listFilesFileFilter(FileFilter@ filter)
    {
        return jarrayOf_JObject(this.file_AbFile.listFiles(filter));
    }
    

    bool mkdir()
    {
        return this.file_AbFile.mkdir();
    }
    

    bool mkdirs()
    {
        return this.file_AbFile.mkdirs();
    }
    

    bool renameTo(AbFile@ dest)
    {
        return this.file_AbFile.renameTo(dest.getFile());
    }
    

    bool setLastModified(int64 time)
    {
        return this.file_AbFile.setLastModified(time);
    }
    

    bool setReadOnly()
    {
        return this.file_AbFile.setReadOnly();
    }
    

    bool setWritable(bool writable, bool ownerOnly)
    {
        return this.file_AbFile.setExecutable(writable, ownerOnly);
    }
    

    bool setWritable(bool writable)
    {
        return this.file_AbFile.setWritable(writable);
    }
    

    bool setReadable(bool readable, bool ownerOnly)
    {
        return this.file_AbFile.setReadable(readable, ownerOnly);
    }
    

    bool setReadable(bool readable)
    {
        return this.file_AbFile.setReadable(readable);
    }
    

    bool setExecutable(bool executable, bool ownerOnly)
    {
        return this.file_AbFile.setExecutable(executable, ownerOnly);
    }
    

    bool setExecutable(bool executable)
    {
        return this.file_AbFile.setExecutable(executable);
    }
    

    bool canExecute()
    {
        return this.file_AbFile.canExecute();
    }
    

    int64 getTotalSpace()
    {
        return this.file_AbFile.getTotalSpace();
    }
    

    int64 getFreeSpace()
    {
        return this.file_AbFile.getFreeSpace();
    }
    

    int64 getUsableSpace()
    {
        return this.file_AbFile.getUsableSpace();
    }
    

    int compareTo(File@ pathname)
    {
        return this.file_AbFile.compareTo(pathname);
    }
    

    bool equals(JObject@ obj)
    {
        return TsUtil::getInstance().equalsNotstring(this.file_AbFile, obj);
    }
    

    int hashCode()
    {
        return this.file_AbFile.hashCode();
    }
    

    string toString()
    {
        return this.file_AbFile.toString();
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

