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
// package org.allbinary.game.ag.layer.pickup.health

class HealPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, PickupProcessorInterface
{
    HealLayerCircularStaticPool@ pool_HealPickedUpLayerInterfaceFactory;

    // Java field initializers run after the super constructor
    void jfields_HealPickedUpLayerInterfaceFactory()
    {
    @this.pool_HealPickedUpLayerInterfaceFactory = HealLayerCircularStaticPool().jinit_HealLayerCircularStaticPool(HealLayerFactory().jinit_HealLayerFactory(), 1);
    }
    

    HealPickedUpLayerInterfaceFactory@ jinit_HealPickedUpLayerInterfaceFactory()
    {
        this.jinit_PickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory::getInstance().HEAL, IconLayerFactory::getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(HealthResources::getInstance().RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(HealthResources::getInstance().RESOURCE).getInstance(0));
        this.jfields_HealPickedUpLayerInterfaceFactory();
        return this;
    }
    

    int getTotal()
    {
        return 1;
    }
    

    void process(AllBinaryLayer@ sourceLayerInterface)
    {
        this.pool_HealPickedUpLayerInterfaceFactory.visit(sourceLayerInterface);
    }
}

namespace HealPickedUpLayerInterfaceFactory
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
        @HealPickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface = HealPickedUpLayerInterfaceFactory().jinit_HealPickedUpLayerInterfaceFactory();
    }
    

    PickedUpLayerInterfaceFactoryInterface@ getInstance()
    {
        return HealPickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface;
    }
}

