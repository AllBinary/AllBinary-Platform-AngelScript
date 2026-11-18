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

class ArrayAI : BasicAI
{
    ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterfaceArray_ArrayAI;
    

    ArrayAI@ jinit_ArrayAI(ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterface, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        @this.artificialIntelligenceInterfaceArray_ArrayAI = artificialIntelligenceInterface;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        int size = int(this.artificialIntelligenceInterfaceArray_ArrayAI.length());
        for (int index = 0; index < size; index++) {
            this.artificialIntelligenceInterfaceArray_ArrayAI[index].processAI(allBinaryLayerManager);
        }
    }
    

    ArtificialIntelligenceInterface@[]@ getArtificialIntelligenceInterface()
    {
        return this.artificialIntelligenceInterfaceArray_ArrayAI;
    }
}

