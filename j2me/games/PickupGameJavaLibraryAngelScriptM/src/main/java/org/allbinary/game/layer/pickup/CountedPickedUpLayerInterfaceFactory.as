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

class CountedPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, CountedPickedUpLayerInterfaceFactoryInterface
{
    int id_CountedPickedUpLayerInterfaceFactory;
    

    CountedPickedUpLayerInterfaceFactory@ jinit_CountedPickedUpLayerInterfaceFactory(PickedUpLayerType@ pickeUpLayerType, IconLayer@ iconLayer, Animation@ animationInterface)
    {
        this.jinit_PickedUpLayerInterfaceFactory(pickeUpLayerType, iconLayer, animationInterface);
        BasicArrayList@ list = CountedPickedUpLayerInterfaceFactoryPool::getInstance().getList();
        this.id_CountedPickedUpLayerInterfaceFactory = list.size();
        list.add(this);
        return this;
    }
    

    AllBinaryLayer@ getNextInstance(ABHashtable@ hashtable, int x, int y, int z)
    {
        jthrow(Exception().jinit_Exception(CommonStrings::getInstance().NOT_IMPLEMENTED));
        return null;
    }
    

    int getTotal()
    {
        return -1;
    }
    

    int getId()
    {
        return this.id_CountedPickedUpLayerInterfaceFactory;
    }
}

namespace CountedPickedUpLayerInterfaceFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY = CountedPickedUpLayerInterfaceFactory().jinit_CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory::getInstance().NONE, IconLayer::NULL_ICON_LAYER, NullAnimationFactory::getFactoryInstance().getInstance(0));
    }

    CountedPickedUpLayerInterfaceFactory@ jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY;
    CountedPickedUpLayerInterfaceFactory@ get_NULL_COUNTED_PICKUP_LAYER_FACTORY() property { jclinit(); return jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY; }
    void set_NULL_COUNTED_PICKUP_LAYER_FACTORY(CountedPickedUpLayerInterfaceFactory@ value) property { jclinit(); @jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY = value; }
}

