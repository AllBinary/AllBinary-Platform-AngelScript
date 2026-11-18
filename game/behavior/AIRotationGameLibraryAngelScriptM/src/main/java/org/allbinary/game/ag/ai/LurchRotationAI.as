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

class LurchRotationAI : LurchAI
{
    IndexedAnimation@ rotationAnimationInterface_LurchRotationAI;
    

    LurchRotationAI@ jinit_LurchRotationAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_LurchAI(ownerLayerInterface, gameInput);
        RotationAnimationInterfaceCompositeInterface@ rotationAnimationInterfaceCompositeInterface = cast<RotationAnimationInterfaceCompositeInterface>(this.getOwnerLayerInterface());
        @this.rotationAnimationInterface_LurchRotationAI = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface();
        this.update();
        return this;
    }
    

    void reverse()
    {
        LurchAI::reverse();
        this.update();
    }
    

    void update()
    {
        if (this.currentRelativeAngle == 0) {
            RotationAnimationInterface@ rotationAnimationInterface = cast<RotationAnimationInterface>(this.rotationAnimationInterface_LurchRotationAI);
            AngleIncrementInfo@ angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
            RotationAnimationInterfaceCompositeInterface@ rotationAnimationInterfaceCompositeInterface = cast<RotationAnimationInterfaceCompositeInterface>(this.getOwnerLayerInterface());
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
        } else if (this.currentRelativeAngle == 180) {
            RotationAnimationInterface@ rotationAnimationInterface = cast<RotationAnimationInterface>(this.rotationAnimationInterface_LurchRotationAI);
            AngleIncrementInfo@ angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
            RotationAnimationInterfaceCompositeInterface@ rotationAnimationInterfaceCompositeInterface = cast<RotationAnimationInterfaceCompositeInterface>(this.getOwnerLayerInterface());
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue());
        }
    }
}

