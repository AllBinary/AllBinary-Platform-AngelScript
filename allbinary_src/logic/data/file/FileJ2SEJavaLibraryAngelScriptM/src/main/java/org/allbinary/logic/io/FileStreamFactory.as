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
// package org.allbinary.logic.io

class FileStreamFactory : JObjectBase
{
    

    FileStreamFactory@ jinit_FileStreamFactory()
    {
        return this;
    }
    

    AbFileInputStream@ getFileInputStreamInstance(string path, string fileName)
    {
        AbPath@ FILEABPATH = AbPath().jinit_AbPath(path, fileName);
        AbFile@ file = AbFile::createAbFileFromAbPath(FILEABPATH);
        return AbFileInputStream::createFromAbFile(file);
    }
    

    AbFileOutputStream@ getFileOutputStreamInstance(string path, string fileName)
    {
        AbPath@ FILEABPATH = AbPath().jinit_AbPath(path, fileName);
        AbFile@ file = AbFile::createAbFileFromAbPath(FILEABPATH);
        if (file.exists()) {
            file.delete();
            file.createNewFile();
        }
        return AbFileOutputStream::createFromAbFile(file);
    }
    

    void delete(string path, string fileName)
    {
        AbPath@ FILEABPATH = AbPath().jinit_AbPath(path, fileName);
        AbFile@ file = AbFile::createAbFileFromAbPath(FILEABPATH);
        file.delete();
    }
}

namespace FileStreamFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_SINGLETON;
    JObject@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(JObject@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    FileStreamFactory@ getInstance()
    {
        if (FileStreamFactory::SINGLETON is NullUtil::getInstance().NULL_OBJECT) {
            @FileStreamFactory::SINGLETON = FileStreamFactory().jinit_FileStreamFactory();
        }
        return cast<FileStreamFactory>(FileStreamFactory::SINGLETON);
    }
}

