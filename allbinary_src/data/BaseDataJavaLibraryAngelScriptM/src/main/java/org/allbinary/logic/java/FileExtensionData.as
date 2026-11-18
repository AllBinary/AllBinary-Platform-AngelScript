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
// package org.allbinary.logic.java

class FileExtensionData : JObjectBase
{
    string DOT_JAVA_SOURCE;
    string JAVA_SOURCE;

    // Java field initializers run after the super constructor
    void jfields_FileExtensionData()
    {
    this.DOT_JAVA_SOURCE = ".java";
    this.JAVA_SOURCE = "java";
    }
    

    FileExtensionData@ jinit_FileExtensionData()
    {
        this.jfields_FileExtensionData();
        return this;
    }
}

namespace FileExtensionData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FileExtensionData().jinit_FileExtensionData();
    }

    FileExtensionData@ jcell_instance;
    FileExtensionData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FileExtensionData@ value) property { jclinit(); @jcell_instance = value; }
    

    FileExtensionData@ getInstance()
    {
        return FileExtensionData::instance;
    }
}

