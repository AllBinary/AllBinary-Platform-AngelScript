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

class LifePickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, PickupProcessorInterface
{
    LifeLayerCircularStaticPool@ pool_LifePickedUpLayerInterfaceFactory;

    // Java field initializers run after the super constructor
    void jfields_LifePickedUpLayerInterfaceFactory()
    {
    @this.pool_LifePickedUpLayerInterfaceFactory = LifeLayerCircularStaticPool().jinit_LifeLayerCircularStaticPool(LifeLayerFactory().jinit_LifeLayerFactory(), 1);
    }
    

    LifePickedUpLayerInterfaceFactory@ jinit_LifePickedUpLayerInterfaceFactory()
    {
        this.jinit_PickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory::getInstance().LIFE, IconLayerFactory::getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(LifeResources::getInstance().RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(LifeResources::getInstance().RESOURCE).getInstance(0));
        this.jfields_LifePickedUpLayerInterfaceFactory();
        return this;
    }
    

    int getTotal()
    {
        return 1;
    }
    

    void process(AllBinaryLayer@ sourceLayerInterface)
    {
        this.pool_LifePickedUpLayerInterfaceFactory.visit(sourceLayerInterface);
    }
}

namespace LifePickedUpLayerInterfaceFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory::NULL_COUNTED_PICKUP_LAYER_FACTORY;
    }

    PickedUpLayerInterfaceFactoryInterface@ jcell_pickedUpLayerInterfaceFactoryInterface;
    PickedUpLayerInterfaceFactoryInterface@ get_pickedUpLayerInterfaceFactoryInterface() property { jclinit(); return jcell_pickedUpLayerInterfaceFactoryInterface; }
    void set_pickedUpLayerInterfaceFactoryInterface(PickedUpLayerInterfaceFactoryInterface@ value) property { jclinit(); @jcell_pickedUpLayerInterfaceFactoryInterface = value; }
    

    void init()
    {
        @LifePickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface = LifePickedUpLayerInterfaceFactory().jinit_LifePickedUpLayerInterfaceFactory();
    }
    

    PickedUpLayerInterfaceFactoryInterface@ getInstance()
    {
        return LifePickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface;
    }
}

