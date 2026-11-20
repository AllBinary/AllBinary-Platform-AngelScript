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

class ReverseVelocityBoundsVisitor : JObjectBase, BoundsVisitorInterface
{
    LogUtil@ logUtil;
    VelocityInterface@ velocityInterface;
    LayerInterface@ layerInterface_ReverseVelocityBoundsVisitor;

    // Java field initializers run after the super constructor
    void jfields_ReverseVelocityBoundsVisitor()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    }
    

    ReverseVelocityBoundsVisitor@ jinit_ReverseVelocityBoundsVisitor(LayerInterface@ layerInterface)
    {
        this.jfields_ReverseVelocityBoundsVisitor();
        @this.layerInterface_ReverseVelocityBoundsVisitor = layerInterface;
        VelocityInterfaceCompositeInterface@ velocityInterfaceCompositeInterface = cast<VelocityInterfaceCompositeInterface>(layerInterface);
        @this.velocityInterface = cast<VelocityInterface>(velocityInterfaceCompositeInterface.getVelocityProperties());
        return this;
    }
    

    int getX()
    {
        return this.layerInterface_ReverseVelocityBoundsVisitor.getXP();
    }
    

    int getY()
    {
        return this.layerInterface_ReverseVelocityBoundsVisitor.getYP();
    }
    

    void minX()
    {
        if (this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0) {
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        }
    }
    

    void maxX()
    {
        if (this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0) {
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        }
    }
    

    void minY()
    {
        if (this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0) {
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        }
    }
    

    void maxY()
    {
        if (this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0) {
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        }
    }
}

