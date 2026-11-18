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
// package org.allbinary.game.ag.layer.pickup

class FallingPickupLayer : PickupLayer, TickableInterface
{
    

    FallingPickupLayer@ jinit_FallingPickupLayer(RemoteInfo@ remoteInfo)
    {
        this.jinit_PickupLayer(FallingPickupLayer::NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory::getFactoryInstance().getInstance(0), Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, 0, 0), ViewPosition::getInstanceD());
        return this;
    }
    

    void processTick(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        this.setPosition(this.x, this.y + 1, this.z);
    }
    

    bool implmentsTickableInterface()
    {
        return true;
    }
}

namespace FallingPickupLayer
{
    const string NAME = "FallingPickupLayer";
}

