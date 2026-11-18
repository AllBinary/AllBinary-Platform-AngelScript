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

class MineLayerCircularStaticPool : JObjectBase
{

    MineLayerCircularStaticPool@ jinit_MineLayerCircularStaticPool()
    {
        return this;
    }
}

namespace MineLayerCircularStaticPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL = WeaponLayerCircularPool().jinit_WeaponLayerCircularPool();
    }

    WeaponLayerCircularPool@ jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL;
    WeaponLayerCircularPool@ get_WEAPON_LAYER_CIRCULAR_STATIC_POOL() property { jclinit(); return jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL; }
    void set_WEAPON_LAYER_CIRCULAR_STATIC_POOL(WeaponLayerCircularPool@ value) property { jclinit(); @jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL = value; }
    

    void init(ViewPositionFactoryInterface@ viewPositionFactoryInterface)
    {
        MineCountedPickedUpLayerInterfaceFactory::init();
        MineLayerCircularStaticPool::WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool(MineLayerFactory().jinit_MineLayerFactory(viewPositionFactoryInterface), 20);
    }
    

    WeaponLayerCircularPool@ getInstance()
    {
        return MineLayerCircularStaticPool::WEAPON_LAYER_CIRCULAR_STATIC_POOL;
    }
}

