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
// package org.allbinary.game.ag.layer.pickup.points

class Points30kPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, PickupProcessorInterface
{
    PointsLayerCircularStaticPool@ pool_Points30kPickedUpLayerInterfaceFactory;

    // Java field initializers run after the super constructor
    void jfields_Points30kPickedUpLayerInterfaceFactory()
    {
    @this.pool_Points30kPickedUpLayerInterfaceFactory = PointsLayerCircularStaticPool().jinit_PointsLayerCircularStaticPool(PointsLayerFactory().jinit_PointsLayerFactory(GameConfigurationUtil::getInstance().getCompetitionValue() * 30000), 1);
    }
    

    Points30kPickedUpLayerInterfaceFactory@ jinit_Points30kPickedUpLayerInterfaceFactory()
    {
        this.jinit_PickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory::getInstance().POINTS, IconLayerFactory::getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(PointsResources::getInstance().RESOURCE_3).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(PointsResources::getInstance().RESOURCE_3).getInstance(0));
        this.jfields_Points30kPickedUpLayerInterfaceFactory();
        return this;
    }
    

    int getTotal()
    {
        return 1;
    }
    

    void process(AllBinaryLayer@ sourceLayerInterface)
    {
        this.pool_Points30kPickedUpLayerInterfaceFactory.visit(sourceLayerInterface);
    }
}

namespace Points30kPickedUpLayerInterfaceFactory
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
        @Points30kPickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface = Points30kPickedUpLayerInterfaceFactory().jinit_Points30kPickedUpLayerInterfaceFactory();
    }
    

    PickedUpLayerInterfaceFactoryInterface@ getInstance()
    {
        return Points30kPickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface;
    }
}

