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
class PreLogUtil : JObjectBase
{
    

    PreLogUtil@ jinit_PreLogUtil()
    {
        return this;
    }
}

namespace PreLogUtil
{
    

    void put(string specialMessage, JObject@ anyType, string functionName)
    {
        PreLogUtil::putOE(specialMessage, anyType, functionName, NullUtil::getInstance().NULL_OBJECT);
    }
    

    void putOE(string specialMessage, JObject@ anyType, string functionName, JObject@ exception)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
    

    void putSE(string specialMessage, string className, string functionName, JObject@ exception)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
}

