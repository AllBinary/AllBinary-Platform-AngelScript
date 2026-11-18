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

//ActualPlatform
class LogUtil : JObjectBase
{
    

    LogUtil@ jinit_LogUtil()
    {
        return this;
    }
    

    void putP(Log@ log)
    {
    }
    

    void putF(string specialMessage, JObject@ anyType, string functionName)
    {
    }
    

    void putFS(string specialMessage, string className, string functionName)
    {
    }
    

    void put(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
    }
}

namespace LogUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LogUtil().jinit_LogUtil();
    }

    LogUtil@ jcell_instance;
    LogUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LogUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LogUtil@ getInstance()
    {
        return LogUtil::instance;
    }
}

