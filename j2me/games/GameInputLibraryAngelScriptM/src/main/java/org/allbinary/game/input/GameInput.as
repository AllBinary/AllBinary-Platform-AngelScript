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

class GameInput : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    BasicArrayList@ gameKeyEventList_GameInput;
    BasicArrayList@ removalGameKeyEventList_GameInput;
    bool isRemoveDuplicateKeyPresses;

    // Java field initializers run after the super constructor
    void jfields_GameInput()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    
    }
    

    GameInput@ jinit_GameInput(BasicArrayList@ gameKeyEventList, BasicArrayList@ removalGameKeyEventList)
    {
        this.jfields_GameInput();
        @this.gameKeyEventList_GameInput = gameKeyEventList;
        @this.removalGameKeyEventList_GameInput = removalGameKeyEventList;
        this.isRemoveDuplicateKeyPresses = Features::getInstance().isFeature(InputFeatureFactory::getInstance().REMOVE_DUPLICATE_KEY_PRESSES);
        return this;
    }
    

    void add(GameKeyEvent@ gameKeyEvent)
    {
        if (this.isRemoveDuplicateKeyPresses && this.gameKeyEventList_GameInput.contains(gameKeyEvent)) {
            return;
        }
        if (gameKeyEvent !is null) {
            this.gameKeyEventList_GameInput.add(gameKeyEvent);
        } else {
            this.logUtil.putF("Danger Passed Null GameKeyEvent", this, this.commonStrings.ADD);
        }
    }
    

    void addForRemoval(GameKeyEvent@ gameKeyEvent)
    {
        this.removalGameKeyEventList_GameInput.add(gameKeyEvent);
    }
    

    bool isForRemoval(GameKeyEvent@ gameKeyEvent)
    {
        return this.removalGameKeyEventList_GameInput.contains(gameKeyEvent);
    }
    

    void clear()
    {
        this.gameKeyEventList_GameInput.clear();
    }
    

    void removeNonAIInputGameKeyEvents()
    {
        BasicArrayList@ list = this.gameKeyEventList_GameInput;
        GameKeyEvent@ gameKeyEvent;
        for (int index = list.size(); --index >= 0; ) {
            @gameKeyEvent = cast<GameKeyEvent>(list.objectArray[index]);
            if (gameKeyEvent.getSourceId() != 1) {
                list.removeAt(index);
            }
        }
    }
    

    void update()
    {
        BasicArrayList@ removeList = this.removalGameKeyEventList_GameInput;
        BasicArrayList@ list = this.gameKeyEventList_GameInput;
        int size = removeList.size();
        for (int index = 0; index < size; index++) {
            JObject@ anyType = removeList.objectArray[index];
            for (int index2 = list.size(); --index2 >= 0; ) {
                if (list.objectArray[index2] is anyType) {
                    list.removeAt(index2);
                }
            }
        }
        removeList.clear();
    }
    

    BasicArrayList@ getRemovalGameKeyEventList()
    {
        return this.removalGameKeyEventList_GameInput;
    }
    

    BasicArrayList@ getGameKeyEventList()
    {
        return this.gameKeyEventList_GameInput;
    }
}

