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

class SpinnerAI : BasicAI
{
    bool isEven_SpinnerAI;
    int[]@ direction_SpinnerAI;
    

    SpinnerAI@ jinit_SpinnerAI(int[]@ direction, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        @this.direction_SpinnerAI = direction;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.isEven_SpinnerAI) {
            BasicAI::processKeyAI(this.direction_SpinnerAI[0]);
            this.isEven_SpinnerAI = false;
        } else {
            BasicAI::processKeyAI(Canvas::KEY_NUM1);
            this.isEven_SpinnerAI = true;
        }
    }
}

