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
// package org.allbinary.logic.java.exception

//ActualPlatform
class ExceptionUtil : JObjectBase
{
    Exception@ PRETEND_EXCEPTION;
    string NONE_ExceptionUtil;

    // Java field initializers run after the super constructor
    void jfields_ExceptionUtil()
    {
    @this.PRETEND_EXCEPTION = Exception().jinit_Exception("Not Really An Exception");
    this.NONE_ExceptionUtil = "No Stack Trace";
    }
    

    ExceptionUtil@ jinit_ExceptionUtil()
    {
        this.jfields_ExceptionUtil();
        return this;
    }
    

    string getStackTrace(Throwable@ e)
    {
        ByteArrayOutputStream@ bs = ByteArrayOutputStream().jinit_ByteArrayOutputStream();
        e.printStackTrace();
        string output = bs.toString();
        return String::newString(output);
    }
}

namespace ExceptionUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ExceptionUtil().jinit_ExceptionUtil();
    }

    ExceptionUtil@ jcell_instance;
    ExceptionUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ExceptionUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ExceptionUtil@ getInstance()
    {
        return ExceptionUtil::instance;
    }
}

