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

class HorizontaRotationManeuverAI : BasicAI, ArtificialIntelligenceTransitionInterface
{
    CircularIndexUtil@ circularIndexUtil_HorizontaRotationManeuverAI;
    int currentSpeedDivisor_HorizontaRotationManeuverAI;
    IndexedAnimation@ rotationAnimationInterface_HorizontaRotationManeuverAI;
    BasicVelocityProperties@ baseVelocityInterface_HorizontaRotationManeuverAI;
    VelocityInterface@ velocityInterface_HorizontaRotationManeuverAI;

    // Java field initializers run after the super constructor
    void jfields_HorizontaRotationManeuverAI()
    {
    @this.circularIndexUtil_HorizontaRotationManeuverAI = CircularIndexUtil::createInstanceAt(10, Integer::MAX_VALUE);
    this.currentSpeedDivisor_HorizontaRotationManeuverAI = 5;
    
    
    
    }
    

    HorizontaRotationManeuverAI@ jinit_HorizontaRotationManeuverAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_HorizontaRotationManeuverAI();
        RotationAnimationInterfaceCompositeInterface@ rotationAnimationInterfaceCompositeInterface = cast<RotationAnimationInterfaceCompositeInterface>(this.getOwnerLayerInterface());
        @this.rotationAnimationInterface_HorizontaRotationManeuverAI = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface();
        VelocityInterfaceCompositeInterface@ velocityInterfaceCompositeInterface = cast<VelocityInterfaceCompositeInterface>(this.getOwnerLayerInterface());
        @this.baseVelocityInterface_HorizontaRotationManeuverAI = velocityInterfaceCompositeInterface.getVelocityProperties();
        @this.velocityInterface_HorizontaRotationManeuverAI = cast<VelocityInterface>(this.baseVelocityInterface_HorizontaRotationManeuverAI);
        RotationAnimationInterface@ rotationAnimationInterface = cast<RotationAnimationInterface>(this.rotationAnimationInterface_HorizontaRotationManeuverAI);
        AngleIncrementInfo@ angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
        return this;
    }
    

    void transition()
    {
        RotationAnimationInterface@ rotationAnimationInterface = cast<RotationAnimationInterface>(this.rotationAnimationInterface_HorizontaRotationManeuverAI);
        AngleIncrementInfo@ angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        RotationAnimationInterfaceCompositeInterface@ rotationAnimationInterfaceCompositeInterface = cast<RotationAnimationInterfaceCompositeInterface>(this.getOwnerLayerInterface());
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
        AllBinaryLayer@ allbinaryLayer = this.getOwnerLayerInterface();
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP());
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        RotationAnimationInterface@ rotationAnimationInterface = (cast<RotationAnimationInterface>(this.rotationAnimationInterface_HorizontaRotationManeuverAI));
        AngleIncrementInfo@ angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        int frame = this.rotationAnimationInterface_HorizontaRotationManeuverAI.getFrame();
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP() - ownerLayerInterface.getWidth() <= 0 && frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            this.reverse();
            this.drop();
        }
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        if (ownerLayerInterface.getX2() + ownerLayerInterface.getWidth() > displayInfo.getLastWidth() && frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        int index = this.circularIndexUtil_HorizontaRotationManeuverAI.getIndex();
        if (index % this.currentSpeedDivisor_HorizontaRotationManeuverAI == 0 && index % 2 == 0) {
            BasicAI::processKeyAI(Canvas::UP);
            this.velocityInterface_HorizontaRotationManeuverAI.limitMaxXYVelocity(this.velocityInterface_HorizontaRotationManeuverAI.getMaxForwardVelocity() / this.currentSpeedDivisor_HorizontaRotationManeuverAI);
        }
        this.circularIndexUtil_HorizontaRotationManeuverAI.next();
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            BasicAI::processKeyAI(Canvas::KEY_NUM0);
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            BasicAI::processKeyAI(Canvas::KEY_POUND);
        }
    }
    

    void reverse()
    {
        RotationAnimationInterface@ rotationAnimationInterface = cast<RotationAnimationInterface>(this.rotationAnimationInterface_HorizontaRotationManeuverAI);
        AngleIncrementInfo@ angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        int frame = this.rotationAnimationInterface_HorizontaRotationManeuverAI.getFrame();
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            RotationAnimationInterfaceCompositeInterface@ rotationAnimationInterfaceCompositeInterface = cast<RotationAnimationInterfaceCompositeInterface>(this.getOwnerLayerInterface());
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue());
            this.baseVelocityInterface_HorizontaRotationManeuverAI.zero();
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            RotationAnimationInterfaceCompositeInterface@ rotationAnimationInterfaceCompositeInterface = cast<RotationAnimationInterfaceCompositeInterface>(this.getOwnerLayerInterface());
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue());
            this.baseVelocityInterface_HorizontaRotationManeuverAI.zero();
        }
    }
    

    void accelerate()
    {
        if (this.currentSpeedDivisor_HorizontaRotationManeuverAI > 1) {
            this.currentSpeedDivisor_HorizontaRotationManeuverAI--;
        }
    }
    

    void drop()
    {
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        int y = ownerLayerInterface.getYP();
        if (ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > displayInfo.getLastHeight()) {
            y = 0;
        } else {
            y += ownerLayerInterface.getHeight() + 1;
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
    

    int getId()
    {
        return ArtificialIntelligence::AI_ID;
    }
}

