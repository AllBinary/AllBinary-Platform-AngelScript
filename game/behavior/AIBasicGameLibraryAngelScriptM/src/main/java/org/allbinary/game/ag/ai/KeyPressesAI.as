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

class KeyPressesAI : BasicAI
{
    bool on_KeyPressesAI;
    JInteger@[]@ keys;

    // Java field initializers run after the super constructor
    void jfields_KeyPressesAI()
    {
    this.on_KeyPressesAI = true;
    
    }
    

    KeyPressesAI@ jinit_KeyPressesAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_KeyPressesAI();
        @this.keys = array<JInteger@>(hashtable.size());
        JObject@[]@ objectArray = HashtableUtil::getInstance().getKeysAsArray(hashtable);
        int size = int(objectArray.length());
        for (int index = 0; index < size; index++) {
            @this.keys[index] = cast<JInteger>(hashtable.get(objectArray[index]));
        }
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.on_KeyPressesAI) {
            for (int index = 0; index < int(this.keys.length()); index++) {
                BasicAI::processKeyAI(this.keys[index].intValue());
            }
        }
    }
    

    void toggle()
    {
        if (this.isOn()) {
            this.setOn(false);
        } else {
            this.setOn(true);
        }
    }
    

    void disable()
    {
        this.setOn(false);
    }
    

    void enable()
    {
        this.setOn(true);
    }
    

    void setOn(bool on)
    {
        this.on_KeyPressesAI = on;
    }
    

    bool isOn()
    {
        return this.on_KeyPressesAI;
    }
}

