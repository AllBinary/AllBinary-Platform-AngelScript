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
    GameKey@ gameKey_GameKeyCompleteMotionGestureInputEvent;
    GameKeyEvent@ gameKeyEvent_GameKeyCompleteMotionGestureInputEvent;

    // Java field initializers run after the super constructor
    void jfields_GameKeyCompleteMotionGestureInputEvent()
    {
    @this.gameKey_GameKeyCompleteMotionGestureInputEvent = GameKey::NULL_GAME_KEY;
    @this.gameKeyEvent_GameKeyCompleteMotionGestureInputEvent = GameKeyEvent::NONE;
    }
    

    GameKeyCompleteMotionGestureInputEvent@ jinit_GameKeyCompleteMotionGestureInputEvent(string name, MotionGestureInput@ motionGestureInput, InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        this.jinit_CompleteMotionGestureInputEvent(name, motionGestureInput);
        this.jfields_GameKeyCompleteMotionGestureInputEvent();
        return this;
    }
    

    int getSourceId()
    {
        return 0;
    }
    

    void update()
    {
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

