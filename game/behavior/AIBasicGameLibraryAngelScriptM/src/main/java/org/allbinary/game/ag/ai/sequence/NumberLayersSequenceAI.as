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

class NumberLayersSequenceAI : SequenceAI
{
    int numberOfLayersLeft_NumberLayersSequenceAI;
    

    NumberLayersSequenceAI@ jinit_NumberLayersSequenceAI(int numberOfEnemiesLeft, ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterface, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_SequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        this.numberOfLayersLeft_NumberLayersSequenceAI = numberOfEnemiesLeft;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.getIndex() == 0) {
            if (allBinaryLayerManager.getSize() < this.numberOfLayersLeft_NumberLayersSequenceAI) {
                this.setIndex(1);
            }
        }
        SequenceAI::processAI(allBinaryLayerManager);
    }
}

