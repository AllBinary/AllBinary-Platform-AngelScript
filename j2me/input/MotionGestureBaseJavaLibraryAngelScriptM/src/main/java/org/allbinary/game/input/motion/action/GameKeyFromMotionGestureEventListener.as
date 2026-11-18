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

class GameKeyFromMotionGestureEventListener : CompleteMotionGestureInputEventListener
{
    LogUtil@ logUtil;
    GameKeyEvent@ previousGameKeyEvent_GameKeyFromMotionGestureEventListener;

    // Java field initializers run after the super constructor
    void jfields_GameKeyFromMotionGestureEventListener()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.previousGameKeyEvent_GameKeyFromMotionGestureEventListener = GameKeyEvent::NONE;
    }

    GameKeyFromMotionGestureEventListener@ jinit_GameKeyFromMotionGestureEventListener()
    {
        this.jinit_CompleteMotionGestureInputEventListener();
        this.jfields_GameKeyFromMotionGestureEventListener();
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
            if (gameKeyEvent !is this.previousGameKeyEvent_GameKeyFromMotionGestureEventListener) {
                if (this.previousGameKeyEvent_GameKeyFromMotionGestureEventListener !is GameKeyEvent::NONE) {
                    UpGameKeyEventHandler::getInstance().fireEvent(this.previousGameKeyEvent_GameKeyFromMotionGestureEventListener);
                }
                @this.previousGameKeyEvent_GameKeyFromMotionGestureEventListener = gameKeyEvent;
                if (gameKeyEvent !is null && gameKeyEvent !is GameKeyEvent::NONE) {
                    DownGameKeyEventHandler::getInstance().fireEvent(gameKeyEvent);
                }
            }
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

