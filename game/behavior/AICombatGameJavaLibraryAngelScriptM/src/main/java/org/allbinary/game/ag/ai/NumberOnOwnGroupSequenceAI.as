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

class NumberOnOwnGroupSequenceAI : SequenceAI
{
    JInteger@[]@ numberOnSameTeam_NumberOnOwnGroupSequenceAI;
    

    NumberOnOwnGroupSequenceAI@ jinit_NumberOnOwnGroupSequenceAI(JInteger@[]@ numberOnSameTeam, ArtificialIntelligenceInterface@[]@ artificialIntelligenceInterface, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_SequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        @this.numberOnSameTeam_NumberOnOwnGroupSequenceAI = numberOnSameTeam;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        AllBinaryLayer@ layerInterface = this.getOwnerLayerInterface();
        int index = this.getIndex();
        if (int(this.numberOnSameTeam_NumberOnOwnGroupSequenceAI.length()) > index) {
            int size = GroupLayerManagerListener::getInstance().getGroupSizeFromInterface(layerInterface);
            if (this.numberOnSameTeam_NumberOnOwnGroupSequenceAI[index].intValue() > size) {
                this.next();
            }
        }
        SequenceAI::processAI(allBinaryLayerManager);
    }
}

