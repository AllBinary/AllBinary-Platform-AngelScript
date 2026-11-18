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
    LogFormatUtil@ logFormatUtil;
    string specialMessage;
    JObject@ anyType;
    string functionName;
    JObject@ exception;

    // Java field initializers run after the super constructor
    void jfields_Log()
    {
    @this.logFormatUtil = LogFormatUtil::getInstance();
    
    
    
    
    }
    

    Log@ jinit_Log(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
        this.jfields_Log();
        this.specialMessage = specialMessage;
        @this.anyType = anyType;
        this.functionName = functionName;
        @this.exception = exception;
        return this;
    }
    

    string getSpecialMessage()
    {
        return this.specialMessage;
    }
    

    JObject@ getObject()
    {
        return this.anyType;
    }
    

    string getFunctionName()
    {
        return this.functionName;
    }
    

    JObject@ getThrowable()
    {
        return this.exception;
    }
    

    string toString()
    {
        string className = CommonStrings::getInstance().EMPTY;
        string clazz = jClassName(this.anyType);
        if (!clazz.isEmpty()) {
            className = clazz;
        }
        return this.logFormatUtil.get(className, this.functionName, this.specialMessage, this.exception);
    }
}

