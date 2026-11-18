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
// package org.allbinary.game.ag.layer.pickup.life

class LifeLayerCircularStaticPool : AllBinaryLayerCircularPool
{
    

    LifeLayerCircularStaticPool@ jinit_LifeLayerCircularStaticPool(AllBinaryLayerFactoryInterface@ allbinaryLayerFactoryInterface, int total)
    {
        this.jinit_AllBinaryLayerCircularPool();
        AllBinaryLayerCircularPool::initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total);
        return this;
    }
    

    void visit(AllBinaryLayer@ sourceLayerInterface)
    {
        LifeLayer@ lifeLayer = cast<LifeLayer>(this.getNextInstance());
        LifeInterfaceCompositeInterface@ lifeInterfaceCompositeInterface = cast<LifeInterfaceCompositeInterface>(sourceLayerInterface);
        Life@ lifeInterface = lifeInterfaceCompositeInterface.getLifeInterface();
        lifeLayer.visit(lifeInterface);
    }
}

