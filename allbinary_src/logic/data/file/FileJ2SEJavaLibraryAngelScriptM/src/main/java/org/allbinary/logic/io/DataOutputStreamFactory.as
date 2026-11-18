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

class DataOutputStreamFactory : JObjectBase
{

    DataOutputStreamFactory@ jinit_DataOutputStreamFactory()
    {
        return this;
    }
    

    AbDataOutputStream@ getInstanceForAbFile(AbFile@ file)
    {
        AbFileOutputStream@ idFileOutputStream = AbFileOutputStream::createFromAbFile(file);
        AbDataOutputStream@ idOutData = AbDataOutputStream().jinit_AbDataOutputStream(idFileOutputStream);
        return idOutData;
    }
    

    AbDataOutputStream@ getInstance(string filePath, string fileName)
    {
        FileStreamFactory@ fileStreamFactory = FileStreamFactory::getInstance();
        AbFileOutputStream@ fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName);
        AbDataOutputStream@ idOutData = AbDataOutputStream().jinit_AbDataOutputStream(fileOutputStream);
        return idOutData;
    }
}

namespace DataOutputStreamFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DataOutputStreamFactory().jinit_DataOutputStreamFactory();
    }

    DataOutputStreamFactory@ jcell_instance;
    DataOutputStreamFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DataOutputStreamFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    DataOutputStreamFactory@ getInstance_jstatic()
    {
        return DataOutputStreamFactory::instance;
    }
}

