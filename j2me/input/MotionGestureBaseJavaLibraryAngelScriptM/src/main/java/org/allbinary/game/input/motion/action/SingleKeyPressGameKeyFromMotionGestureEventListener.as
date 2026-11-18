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
// package org.allbinary.game.input.motion.action

class SingleKeyPressGameKeyFromMotionGestureEventListener : CompleteMotionGestureInputEventListener
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_SingleKeyPressGameKeyFromMotionGestureEventListener()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    SingleKeyPressGameKeyFromMotionGestureEventListener@ jinit_SingleKeyPressGameKeyFromMotionGestureEventListener()
    {
        this.jinit_CompleteMotionGestureInputEventListener();
        this.jfields_SingleKeyPressGameKeyFromMotionGestureEventListener();
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent@ completeMotionGestureInputEvent)
    {
        try {
            GameKeyCompleteMotionGestureInputEvent@ gameKeyCompleteMotionGestureInputEvent = cast<GameKeyCompleteMotionGestureInputEvent>(completeMotionGestureInputEvent);
            GameKeyEvent@ gameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent();
            PressGameKeyEventHandler::getInstance().fireEvent(gameKeyEvent);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "onCompleteMotionGestureInputEvent", e);
            }
            else { jthrow(jex0); }
        }
    }
}

