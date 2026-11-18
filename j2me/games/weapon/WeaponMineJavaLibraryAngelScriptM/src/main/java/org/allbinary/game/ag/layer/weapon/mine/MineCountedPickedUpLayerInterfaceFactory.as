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
// package org.allbinary.game.ag.layer.weapon.mine

class MineCountedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory
{
    WeaponLayerCircularPool@ weaponLayerCircularStaticPool_MineCountedPickedUpLayerInterfaceFactory;
    WeaponProperties@ weaponProperties_MineCountedPickedUpLayerInterfaceFactory;
    SmallIntegerSingletonFactory@ smallIntegerSingletonFactory_MineCountedPickedUpLayerInterfaceFactory;

    // Java field initializers run after the super constructor
    void jfields_MineCountedPickedUpLayerInterfaceFactory()
    {
    @this.weaponLayerCircularStaticPool_MineCountedPickedUpLayerInterfaceFactory = MineLayerCircularStaticPool::getInstance();
    @this.weaponProperties_MineCountedPickedUpLayerInterfaceFactory = WeaponProperties().jinit_WeaponProperties(-int64(1), -int64(1), 0, 8000, int16(10));
    @this.smallIntegerSingletonFactory_MineCountedPickedUpLayerInterfaceFactory = SmallIntegerSingletonFactory::getInstance();
    }
    

    MineCountedPickedUpLayerInterfaceFactory@ jinit_MineCountedPickedUpLayerInterfaceFactory()
    {
        this.jinit_CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory::getInstance().MINE, IconLayerFactory::getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(MineWeaponResources::getInstance().DROP_ICON_RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(MineWeaponResources::getInstance().DROP_RESOURCE).getInstance(0));
        this.jfields_MineCountedPickedUpLayerInterfaceFactory();
        return this;
    }
    

    int getTotal()
    {
        return 3;
    }
    

    AllBinaryLayer@ getNextInstance(ABHashtable@ hashtable, int x, int y, int z)
    {
        AllBinaryLayer@ sourceLayerInterface = cast<AllBinaryLayer>(hashtable.get(this.smallIntegerSingletonFactory_MineCountedPickedUpLayerInterfaceFactory.getAt(0)));
        JInteger@ angle = cast<JInteger>(hashtable.get(this.smallIntegerSingletonFactory_MineCountedPickedUpLayerInterfaceFactory.getAt(1)));
        ScoreableInterface@ scoreableInterface = cast<ScoreableInterface>(sourceLayerInterface);
        return this.weaponLayerCircularStaticPool_MineCountedPickedUpLayerInterfaceFactory.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, int(angle.intValue()), 0, this.weaponProperties_MineCountedPickedUpLayerInterfaceFactory, scoreableInterface);
    }
}

namespace MineCountedPickedUpLayerInterfaceFactory
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
        @MineCountedPickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface = MineCountedPickedUpLayerInterfaceFactory().jinit_MineCountedPickedUpLayerInterfaceFactory();
    }
    

    PickedUpLayerInterfaceFactoryInterface@ getInstance()
    {
        return MineCountedPickedUpLayerInterfaceFactory::pickedUpLayerInterfaceFactoryInterface;
    }
}

