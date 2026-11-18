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

class ForcedLogUtil : JObjectBase
{

    ForcedLogUtil@ jinit_ForcedLogUtil()
    {
        return this;
    }
}

namespace ForcedLogUtil
{
    

    void log(string message, JObject@ anyType)
    {
        try {
            jthrow(Exception().jinit_Exception(message));
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::putOE(CommonStrings::getInstance().EXCEPTION, anyType, "log", e);
            }
            else { jthrow(jex0); }
        }
    }
}

