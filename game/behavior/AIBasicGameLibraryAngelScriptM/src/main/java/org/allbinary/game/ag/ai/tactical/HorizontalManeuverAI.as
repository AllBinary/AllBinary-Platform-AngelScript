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
// package org.allbinary.game.ag.ai.tactical

class HorizontalManeuverAI : BasicAI
{
    int currentRelativeAngle;
    int currentSpeed_HorizontalManeuverAI;

    // Java field initializers run after the super constructor
    void jfields_HorizontalManeuverAI()
    {
    this.currentRelativeAngle = 0;
    
    }
    

    HorizontalManeuverAI@ jinit_HorizontalManeuverAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_HorizontalManeuverAI();
        this.currentSpeed_HorizontalManeuverAI = 5;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        int x = ownerLayerInterface.getXP();
        if (ownerLayerInterface.getXP() - this.currentSpeed_HorizontalManeuverAI <= 0) {
            this.reverse();
            this.drop();
        }
        if (ownerLayerInterface.getX2() + this.currentSpeed_HorizontalManeuverAI > DisplayInfoSingleton::getInstance().getLastWidth()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        if (this.currentRelativeAngle == 0) {
            x += this.currentSpeed_HorizontalManeuverAI;
        } else if (this.currentRelativeAngle == 180) {
            x -= this.currentSpeed_HorizontalManeuverAI;
        }
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP());
        if (this.currentRelativeAngle == 0) {
            BasicAI::processKeyAI(Canvas::KEY_NUM0);
        } else if (this.currentRelativeAngle == 180) {
            BasicAI::processKeyAI(Canvas::KEY_POUND);
        }
    }
    

    void reverse()
    {
        if (this.currentRelativeAngle == 180) {
            this.currentRelativeAngle = 0;
        } else if (this.currentRelativeAngle == 0) {
            this.currentRelativeAngle = 180;
        }
    }
    

    void accelerate()
    {
        if (this.currentSpeed_HorizontalManeuverAI < 20) {
            this.currentSpeed_HorizontalManeuverAI++;
        }
    }
    

    void drop()
    {
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        int y = ownerLayerInterface.getYP();
        if (ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > DisplayInfoSingleton::getInstance().getLastHeight()) {
            y = 0;
        } else {
            y += ownerLayerInterface.getHeight() + 1;
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
}

