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

class FilePathData : JObjectBase
{
    uint16 SEPARATORCHAR;
    string PATH_START;

    // Java field initializers run after the super constructor
    void jfields_FilePathData()
    {
    this.SEPARATORCHAR = uint16('\\');
    this.PATH_START = "\\\\";
    }
    

    FilePathData@ jinit_FilePathData()
    {
        this.jfields_FilePathData();
        return this;
    }
}

namespace FilePathData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FilePathData().jinit_FilePathData();
    }

    FilePathData@ jcell_instance;
    FilePathData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FilePathData@ value) property { jclinit(); @jcell_instance = value; }
    

    FilePathData@ getInstance()
    {
        return FilePathData::instance;
    }
}

