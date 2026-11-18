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

class LurchAI : BasicAI
{
    int currentRelativeAngle;
    int currentSpeed_LurchAI;

    // Java field initializers run after the super constructor
    void jfields_LurchAI()
    {
    this.currentRelativeAngle = 0;
    
    }
    

    LurchAI@ jinit_LurchAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_LurchAI();
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.currentSpeed_LurchAI == -1) {
            this.currentSpeed_LurchAI = 5;
        } else {
            this.currentSpeed_LurchAI = -1;
        }
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        int x = ownerLayerInterface.getXP();
        if (ownerLayerInterface.getXP() - this.currentSpeed_LurchAI <= 0) {
            this.reverse();
            this.drop();
        }
        if (ownerLayerInterface.getX2() + this.currentSpeed_LurchAI > DisplayInfoSingleton::getInstance().getLastWidth()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        if (this.currentRelativeAngle == 0) {
            x += this.currentSpeed_LurchAI;
        } else if (this.currentRelativeAngle == 180) {
            x -= this.currentSpeed_LurchAI;
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
        if (this.currentSpeed_LurchAI < 20) {
            this.currentSpeed_LurchAI++;
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

