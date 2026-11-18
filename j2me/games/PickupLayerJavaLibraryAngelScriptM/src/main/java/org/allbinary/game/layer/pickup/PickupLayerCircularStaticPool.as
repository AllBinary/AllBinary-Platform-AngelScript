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
// package org.allbinary.game.layer.pickup

class PickupLayerCircularStaticPool : AllBinaryLayerCircularPool
{
    

    PickupLayerCircularStaticPool@ jinit_PickupLayerCircularStaticPool()
    {
        this.jinit_AllBinaryLayerCircularPool();
        return this;
    }
    

    PickedUpLayerInterface@ getInstanceXYZ(PickedUpLayerInterfaceFactoryInterface@ pickedUpLayerInterfaceFactoryInterface, int x, int y, int z)
    {
        PickupLayer@ pickupLayer = cast<PickupLayer>(this.getNextInstance());
        pickupLayer.initXYZ(x, y, z);
        pickupLayer.init(pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.getAnimationInterface());
        return pickupLayer;
    }
}

namespace PickupLayerCircularStaticPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = PickupLayerCircularStaticPool().jinit_PickupLayerCircularStaticPool();
    }

    PickupLayerCircularStaticPool@ jcell_SINGLETON;
    PickupLayerCircularStaticPool@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(PickupLayerCircularStaticPool@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    PickupLayerCircularStaticPool@ getInstance()
    {
        return PickupLayerCircularStaticPool::SINGLETON;
    }
}

