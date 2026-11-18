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

class FileFactory : JObjectBase
{

    FileFactory@ jinit_FileFactory()
    {
        return this;
    }
    

    AbFile@ getInstance(string filePath)
    {
        return AbFile::createAbFileFromRawPath(filePath);
    }
    

    AbFile@ getInstance(AbFile@ file, string childFilePath)
    {
        return AbFile::createAbFileWithChild(file, childFilePath);
    }
    

    bool isFile(string path)
    {
        AbFile@ file = AbFile::createAbFile(path);
        if (file.exists()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

namespace FileFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FileFactory().jinit_FileFactory();
    }

    FileFactory@ jcell_instance;
    FileFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FileFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    FileFactory@ getInstance_jstatic()
    {
        return FileFactory::instance;
    }
}

