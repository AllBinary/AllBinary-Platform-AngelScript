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
// package org.allbinary.business.error

class ErrorData : JObjectBase
{
    string NAME;
    string TEXT;

    // Java field initializers run after the super constructor
    void jfields_ErrorData()
    {
    this.NAME = "ERROR_NAME";
    this.TEXT = "ERROR_TEXT";
    }
    

    ErrorData@ jinit_ErrorData()
    {
        this.jfields_ErrorData();
        return this;
    }
}

namespace ErrorData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ErrorData().jinit_ErrorData();
    }

    ErrorData@ jcell_instance;
    ErrorData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ErrorData@ value) property { jclinit(); @jcell_instance = value; }
    

    ErrorData@ getInstance()
    {
        return ErrorData::instance;
    }
}

