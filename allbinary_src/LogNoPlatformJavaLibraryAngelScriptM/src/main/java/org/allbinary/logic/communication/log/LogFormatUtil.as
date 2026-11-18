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
// package org.allbinary.logic.communication.log

//NoPlatform
class LogFormatUtil : JObjectBase
{
    

    LogFormatUtil@ jinit_LogFormatUtil()
    {
        return this;
    }
    

    string get(string className, string functionName, string specialMessage, JObject@ exception)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return "";
    }
    

    string getS(string className, string functionName, string specialMessage)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return "";
    }
    

    string getO(JObject@ exception)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return "";
    }
}

namespace LogFormatUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LogFormatUtil().jinit_LogFormatUtil();
    }

    LogFormatUtil@ jcell_instance;
    LogFormatUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LogFormatUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LogFormatUtil@ getInstance()
    {
        return LogFormatUtil::instance;
    }
}

