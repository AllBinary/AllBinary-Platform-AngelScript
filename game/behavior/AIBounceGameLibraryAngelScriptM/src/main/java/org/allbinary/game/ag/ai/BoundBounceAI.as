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

class BoundBounceAI : BasicAI
{
    int currentRelativeAngle;
    LayerBounds@ layerBounds_BoundBounceAI;
    BoundsVisitorInterface@ boundsVisitorInterface_BoundBounceAI;

    // Java field initializers run after the super constructor
    void jfields_BoundBounceAI()
    {
    this.currentRelativeAngle = 0;
    
    
    }
    

    BoundBounceAI@ jinit_BoundBounceAI(AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput, LayerBounds@ layerBounds, BoundsVisitorInterface@ boundsVisitorInterface)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_BoundBounceAI();
        @this.layerBounds_BoundBounceAI = layerBounds;
        @this.boundsVisitorInterface_BoundBounceAI = boundsVisitorInterface;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        Rectangle@ rectange = this.layerBounds_BoundBounceAI.getRectangleP();
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight());
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        this.layerBounds_BoundBounceAI.visit(this.boundsVisitorInterface_BoundBounceAI);
    }
}

