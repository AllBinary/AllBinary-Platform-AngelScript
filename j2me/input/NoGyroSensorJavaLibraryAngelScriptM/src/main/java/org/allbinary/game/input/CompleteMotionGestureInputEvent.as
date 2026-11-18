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
// package org.allbinary.game.input

class CompleteMotionGestureInputEvent : AllBinaryEventObject, CompleteMotionGestureInputInterface
{
    LogUtil@ logUtil;
    string name_CompleteMotionGestureInputEvent;
    MotionGestureInput@ motionGestureInput_CompleteMotionGestureInputEvent;

    // Java field initializers run after the super constructor
    void jfields_CompleteMotionGestureInputEvent()
    {
    @this.logUtil = LogUtil::getInstance();
    this.name_CompleteMotionGestureInputEvent = StringUtil::getInstance().EMPTY_STRING;
    @this.motionGestureInput_CompleteMotionGestureInputEvent = TouchMotionGestureFactory::getInstance().NO_MOTION;
    }
    

    CompleteMotionGestureInputEvent@ jinit_CompleteMotionGestureInputEvent(string name, MotionGestureInput@ motionGestureInput)
    {
        this.jinit_AllBinaryEventObject(motionGestureInput);
        this.jfields_CompleteMotionGestureInputEvent();
        this.setName(name);
        try {
            this.setMotionGestureInput(motionGestureInput);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "InputToGameKeyEventAction", e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    void setName(string name)
    {
        this.name_CompleteMotionGestureInputEvent = name;
    }
    

    string getName()
    {
        return this.name_CompleteMotionGestureInputEvent;
    }
    

    void setMotionGestureInput(MotionGestureInput@ motionGestureInput)
    {
        @this.motionGestureInput_CompleteMotionGestureInputEvent = motionGestureInput;
    }
    

    MotionGestureInput@ getMotionGestureInput()
    {
        return this.motionGestureInput_CompleteMotionGestureInputEvent;
    }
}

