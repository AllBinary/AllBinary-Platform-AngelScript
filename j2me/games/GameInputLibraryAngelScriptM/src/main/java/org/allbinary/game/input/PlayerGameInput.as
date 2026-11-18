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

class PlayerGameInput : GameInput, GameKeyEventListenerInterface
{
    GameInputStrings@ gameInputStrings;
    int playerInputId_PlayerGameInput;

    // Java field initializers run after the super constructor
    void jfields_PlayerGameInput()
    {
    @this.gameInputStrings = GameInputStrings::getInstance();
    
    }
    

    PlayerGameInput@ jinit_PlayerGameInput(BasicArrayList@ gameKeyEventList, BasicArrayList@ removalGameKeyEventList, int playerInputId)
    {
        this.jinit_GameInput(gameKeyEventList, removalGameKeyEventList);
        this.jfields_PlayerGameInput();
        this.playerInputId_PlayerGameInput = playerInputId;
        return this;
    }
    

    void onPressGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    void onDownGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        this.add(gameKeyEvent);
    }
    

    void onDownKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    void onDownKey(JInteger@ gameKeyEvent)
    {
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(gameKeyEvent.toString()).toString(), this, this.gameInputStrings.ON_DOWN_GAME_KEY);
    }
    

    void onUpGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        this.addForRemoval(gameKeyEvent);
    }
    

    void onUpKeyEvent(JInteger@ gameKeyEvent)
    {
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    int getPlayerInputId()
    {
        return this.playerInputId_PlayerGameInput;
    }
}

