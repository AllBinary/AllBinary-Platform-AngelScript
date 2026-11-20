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

class Log : JObjectBase
{
    LogFormatUtil@ logFormatUtil_Log;
    string specialMessage_Log;
    JObject@ anyType_Log;
    string functionName_Log;
    JObject@ exception_Log;

    // Java field initializers run after the super constructor
    void jfields_Log()
    {
    @this.logFormatUtil_Log = LogFormatUtil::getInstance();
    
    
    
    
    }
    

    Log@ jinit_Log(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
        this.jfields_Log();
        this.specialMessage_Log = specialMessage;
        @this.anyType_Log = anyType;
        this.functionName_Log = functionName;
        @this.exception_Log = exception;
        return this;
    }
    

    string getSpecialMessage()
    {
        return this.specialMessage_Log;
    }
    

    JObject@ getObject()
    {
        return this.anyType_Log;
    }
    

    string getFunctionName()
    {
        return this.functionName_Log;
    }
    

    JObject@ getThrowable()
    {
        return this.exception_Log;
    }
    

    string toString()
    {
        string className = CommonStrings::getInstance().EMPTY;
        string clazz = jClassName(this.anyType_Log);
        if (!clazz.isEmpty()) {
            className = clazz;
        }
        return this.logFormatUtil_Log.get(className, this.functionName_Log, this.specialMessage_Log, this.exception_Log);
    }
}

