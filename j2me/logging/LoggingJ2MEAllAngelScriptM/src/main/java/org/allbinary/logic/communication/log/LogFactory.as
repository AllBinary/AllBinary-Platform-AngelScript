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
    

    Log@ getInstanceD()
    {
        StringUtil@ stringUtil = StringUtil::getInstance();
        NullUtil@ nullUtil = NullUtil::getInstance();
        return Log().jinit_Log(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT);
    }
    

    Log@ getInstanceNoF(string specialMessage, JObject@ anyType, JObject@ exception)
    {
        return Log().jinit_Log(specialMessage, anyType, StringUtil::getInstance().EMPTY_STRING, exception);
    }
    

    Log@ getInstance(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
        return Log().jinit_Log(specialMessage, anyType, functionName, exception);
    }
    

    Log@ getInstanceF(string specialMessage, JObject@ anyType, string functionName)
    {
        NullUtil@ nullUtil = NullUtil::getInstance();
        return Log().jinit_Log(specialMessage, anyType, functionName, nullUtil.NULL_OBJECT);
    }
}

