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
class LogFactory : JObjectBase
{

    LogFactory@ jinit_LogFactory()
    {
        return this;
    }
}

namespace LogFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_LOG = Log().jinit_Log(StringUtil::getInstance().EMPTY_STRING, NullUtil::getInstance().NULL_OBJECT, StringUtil::getInstance().EMPTY_STRING, NullUtil::getInstance().NULL_OBJECT);
    }

    Log@ jcell_LOG;
    Log@ get_LOG() property { jclinit(); return jcell_LOG; }
    void set_LOG(Log@ value) property { jclinit(); @jcell_LOG = value; }
    

    Log@ getInstanceD()
    {
        StringUtil@ stringUtil = StringUtil::getInstance();
        NullUtil@ nullUtil = NullUtil::getInstance();
        return Log().jinit_Log(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT);
    }
    

    Log@ getInstance(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
        return Log().jinit_Log(specialMessage, anyType, functionName, exception);
    }
    

    Log@ getInstanceF(string specialMessage, JObject@ anyType, string functionName)
    {
        return LogFactory::LOG;
    }
}

