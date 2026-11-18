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

class UpDownVectorAI : BasicAI
{
    BasicVelocityProperties@ velocityInterface_UpDownVectorAI;
    int index_UpDownVectorAI;

    // Java field initializers run after the super constructor
    void jfields_UpDownVectorAI()
    {
    
    this.index_UpDownVectorAI = 0;
    }
    

    UpDownVectorAI@ jinit_UpDownVectorAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_UpDownVectorAI();
        VelocityInterfaceCompositeInterface@ velocityInterfaceCompositeInterface = cast<VelocityInterfaceCompositeInterface>(this.getOwnerLayerInterface());
        @this.velocityInterface_UpDownVectorAI = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.velocityInterface_UpDownVectorAI.getVelocityYBasicDecimalP().setint(0);
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        int y = this.getOwnerLayerInterface().getHeight() * 270;
        if (this.index_UpDownVectorAI < 5) {
            BasicDecimal@ basicDecimal = this.velocityInterface_UpDownVectorAI.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.addint(y);
            this.index_UpDownVectorAI++;
        } else if (this.index_UpDownVectorAI < 10) {
            BasicDecimal@ basicDecimal = this.velocityInterface_UpDownVectorAI.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.subtractint(y);
            this.index_UpDownVectorAI++;
        } else {
            this.index_UpDownVectorAI = 0;
            this.processAI(allBinaryLayerManager);
        }
    }
}

