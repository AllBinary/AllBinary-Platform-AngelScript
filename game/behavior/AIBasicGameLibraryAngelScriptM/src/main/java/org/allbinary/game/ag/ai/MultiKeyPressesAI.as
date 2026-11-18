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
// package org.allbinary.game.ag.ai

class MultiKeyPressesAI : KeyPressesAI
{
    TimeDelayHelper@ toggleTimeHelper_MultiKeyPressesAI;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_MultiKeyPressesAI;

    // Java field initializers run after the super constructor
    void jfields_MultiKeyPressesAI()
    {
    @this.toggleTimeHelper_MultiKeyPressesAI = TimeDelayHelper().jinit_TimeDelayHelper(600);
    @this.gameTickTimeDelayHelper_MultiKeyPressesAI = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    MultiKeyPressesAI@ jinit_MultiKeyPressesAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_KeyPressesAI(hashtable, ownerLayerInterface, gameInput);
        this.jfields_MultiKeyPressesAI();
        this.update();
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
    }
    

    void update()
    {
        GameInput@ gameInput = this.getGameInput();
        JInteger@[]@ keys = this.keys;
        int size = int(keys.length());
        if (this.isOn()) {
            for (int index = 0; index < size; index++) {
                int key = keys[index].intValue();
                if (key != -1) {
                    gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        } else {
            for (int index = 0; index < size; index++) {
                int key = keys[index].intValue();
                if (key != -1) {
                    gameInput.addForRemoval(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        }
    }
    

    void toggle()
    {
        if (this.toggleTimeHelper_MultiKeyPressesAI.isTime(this.gameTickTimeDelayHelper_MultiKeyPressesAI.startTime)) {
            KeyPressesAI::toggle();
            this.update();
        }
    }
    

    void disable()
    {
        if (this.toggleTimeHelper_MultiKeyPressesAI.isTime(this.gameTickTimeDelayHelper_MultiKeyPressesAI.startTime)) {
            KeyPressesAI::disable();
            this.update();
        }
    }
    

    void enable()
    {
        if (this.toggleTimeHelper_MultiKeyPressesAI.isTime(this.gameTickTimeDelayHelper_MultiKeyPressesAI.startTime)) {
            KeyPressesAI::enable();
            this.update();
        }
    }
}

