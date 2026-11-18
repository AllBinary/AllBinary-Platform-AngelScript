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
// package org.allbinary.game.ag.ai.sequence

class ComboSequenceAI : SequenceAI
{
    

    ComboSequenceAI@ jinit_ComboSequenceAI(ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterface, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_SequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterfaceArray = this.getArtificialIntelligenceInterface();
        int size = int(artificialIntelligenceInterfaceArray.length());
        for (int index = 0; index < size; index++) {
            this.setIndex(index);
            SequenceAI::processAI(allBinaryLayerManager);
        }
    }
}

