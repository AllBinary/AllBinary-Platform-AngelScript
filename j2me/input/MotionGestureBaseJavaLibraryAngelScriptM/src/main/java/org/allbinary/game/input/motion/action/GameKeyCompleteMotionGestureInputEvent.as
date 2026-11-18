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

class GameKeyCompleteMotionGestureInputEvent : CompleteMotionGestureInputEvent, GameKeyEventSourceInterface
{
    GameKeyEventFactory@ gameKeyEventFactory_GameKeyCompleteMotionGestureInputEvent;
    int SOURCE_ID_GameKeyCompleteMotionGestureInputEvent;
    GameKey@ gameKey_GameKeyCompleteMotionGestureInputEvent;
    GameKeyEvent@ gameKeyEvent_GameKeyCompleteMotionGestureInputEvent;
    InputToGameKeyMapping@ inputToGameKeyMapping_GameKeyCompleteMotionGestureInputEvent;

    // Java field initializers run after the super constructor
    void jfields_GameKeyCompleteMotionGestureInputEvent()
    {
    @this.gameKeyEventFactory_GameKeyCompleteMotionGestureInputEvent = GameKeyEventFactory::getInstance();
    this.SOURCE_ID_GameKeyCompleteMotionGestureInputEvent = this.gameKeyEventFactory_GameKeyCompleteMotionGestureInputEvent.MOTION_GESTURE_SOURCE_ID;
    @this.gameKey_GameKeyCompleteMotionGestureInputEvent = GameKey::NULL_GAME_KEY;
    @this.gameKeyEvent_GameKeyCompleteMotionGestureInputEvent = GameKeyEvent::NONE;
    
    }
    

    GameKeyCompleteMotionGestureInputEvent@ jinit_GameKeyCompleteMotionGestureInputEvent(string name, MotionGestureInput@ motionGestureInput, InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        this.jinit_CompleteMotionGestureInputEvent(name, motionGestureInput);
        this.jfields_GameKeyCompleteMotionGestureInputEvent();
        @this.inputToGameKeyMapping_GameKeyCompleteMotionGestureInputEvent = inputToGameKeyMapping;
        GameKeyCompleteMotionGestureInputEventFactory::getInstance().add(this);
        this.update();
        return this;
    }
    

    int getSourceId()
    {
        return this.SOURCE_ID_GameKeyCompleteMotionGestureInputEvent;
    }
    

    void update()
    {
        try {
            this.setGameKey(this.inputToGameKeyMapping_GameKeyCompleteMotionGestureInputEvent.getInstance(this.getMotionGestureInput().getId()));
            this.setGameKeyEvent(this.gameKeyEventFactory_GameKeyCompleteMotionGestureInputEvent.getInstanceForInput(this, this.getGameKey()));
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void setGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        @this.gameKeyEvent_GameKeyCompleteMotionGestureInputEvent = gameKeyEvent;
    }
    

    GameKeyEvent@ getGameKeyEvent()
    {
        return this.gameKeyEvent_GameKeyCompleteMotionGestureInputEvent;
    }
    

    void setGameKey(GameKey@ gameKey)
    {
        @this.gameKey_GameKeyCompleteMotionGestureInputEvent = gameKey;
    }
    

    GameKey@ getGameKey()
    {
        return this.gameKey_GameKeyCompleteMotionGestureInputEvent;
    }
}

