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
// package org.allbinary.game.layer.weapon

class WeaponLayerArrayLayerCircularStaticPool : JObjectBase
{
    int MAX_WeaponLayerArrayLayerCircularStaticPool;
    CircularIndexUtil@ circularIndexUtil_WeaponLayerArrayLayerCircularStaticPool;
    WeaponLayer@[]@[]@ WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
    WeaponLayer@[]@[]@ TWO_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
    WeaponLayer@[]@[]@ THREE_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;

    // Java field initializers run after the super constructor
    void jfields_WeaponLayerArrayLayerCircularStaticPool()
    {
    this.MAX_WeaponLayerArrayLayerCircularStaticPool = 5;
    @this.circularIndexUtil_WeaponLayerArrayLayerCircularStaticPool = CircularIndexUtil::createInstance(this.MAX_WeaponLayerArrayLayerCircularStaticPool);
    @this.WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool = array<WeaponLayer@[]@>(this.MAX_WeaponLayerArrayLayerCircularStaticPool * 2);
    @this.TWO_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool = array<WeaponLayer@[]@>(this.MAX_WeaponLayerArrayLayerCircularStaticPool);
    @this.THREE_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool = array<WeaponLayer@[]@>(this.MAX_WeaponLayerArrayLayerCircularStaticPool);
    }

    WeaponLayerArrayLayerCircularStaticPool@ jinit_WeaponLayerArrayLayerCircularStaticPool()
    {
        this.jfields_WeaponLayerArrayLayerCircularStaticPool();
        return this;
    }
    

    void init()
    {
        for (int index = 0; index < this.MAX_WeaponLayerArrayLayerCircularStaticPool; index++) {
            @this.WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool[index] = array<WeaponLayer@>(1);
            @this.TWO_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool[index] = array<WeaponLayer@>(2);
            @this.THREE_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool[index] = array<WeaponLayer@>(3);
        }
        @this.WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool = this.WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
        @this.TWO_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool = this.TWO_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
        @this.THREE_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool = this.THREE_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
    }
    

    WeaponLayer@[]@[]@ getWeaponLayerArrays(int size)
    {
        if (size == 1) {
            return this.WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
        } else if (size == 2) {
            return this.TWO_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
        } else if (size == 3) {
            return this.THREE_WEAPONLAYER_ARRAY_WeaponLayerArrayLayerCircularStaticPool;
        }
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    WeaponLayer@[]@ getInstanceArray(int size)
    {
        WeaponLayer@[]@ weaponLayerArray = this.getWeaponLayerArrays(size)[this.circularIndexUtil_WeaponLayerArrayLayerCircularStaticPool.getIndex()];
        this.circularIndexUtil_WeaponLayerArrayLayerCircularStaticPool.next();
        return weaponLayerArray;
    }
}

namespace WeaponLayerArrayLayerCircularStaticPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = WeaponLayerArrayLayerCircularStaticPool().jinit_WeaponLayerArrayLayerCircularStaticPool();
    }

    WeaponLayerArrayLayerCircularStaticPool@ jcell_instance;
    WeaponLayerArrayLayerCircularStaticPool@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(WeaponLayerArrayLayerCircularStaticPool@ value) property { jclinit(); @jcell_instance = value; }
    

    WeaponLayerArrayLayerCircularStaticPool@ getInstance()
    {
        return WeaponLayerArrayLayerCircularStaticPool::instance;
    }
}

