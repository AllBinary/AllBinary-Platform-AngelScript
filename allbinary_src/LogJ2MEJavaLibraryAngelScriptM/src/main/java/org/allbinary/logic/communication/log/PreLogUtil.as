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
class PreLogUtil : JObjectBase
{
    

    PreLogUtil@ jinit_PreLogUtil()
    {
        return this;
    }
}

namespace PreLogUtil
{
    const string LOG_SUCCESS = "org.allbinary: ";
    

    void put(string specialMessage, JObject@ anyType, string functionName)
    {
        PreLogUtil::putOE(specialMessage, anyType, functionName, NullUtil::getInstance().NULL_OBJECT);
    }
    

    void putOE(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
        string className = CommonStrings::getInstance().EMPTY;
        if (!jClassName(anyType).isEmpty()) {
            className = String::newString(jClassName(anyType));
        }
        string message = LogFormatUtil::getInstance().get(className, functionName, specialMessage, exception);
        System::out_print(PreLogUtil::LOG_SUCCESS);
        System::out_println(message);
    }
    

    void putS(string specialMessage, string className, string functionName)
    {
        PreLogUtil::putSE(specialMessage, className, functionName, NullUtil::getInstance().NULL_OBJECT);
    }
    

    void putSE(string specialMessage, string className, string functionName, JObject@ exception)
    {
        string message = LogFormatUtil::getInstance().get(className, functionName, specialMessage, exception);
        System::out_print(PreLogUtil::LOG_SUCCESS);
        System::out_println(message);
    }
    

    string getClassName(JObject@ anyType)
    {
        return jClassName(anyType);
    }
}

