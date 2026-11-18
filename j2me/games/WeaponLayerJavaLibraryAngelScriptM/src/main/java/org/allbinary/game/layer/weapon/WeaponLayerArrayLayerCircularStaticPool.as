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
    int MAX;
    CircularIndexUtil@ circularIndexUtil;
    WeaponLayer@[]@[]@ WEAPONLAYER_ARRAY;
    WeaponLayer@[]@[]@ TWO_WEAPONLAYER_ARRAY;
    WeaponLayer@[]@[]@ THREE_WEAPONLAYER_ARRAY;

    // Java field initializers run after the super constructor
    void jfields_WeaponLayerArrayLayerCircularStaticPool()
    {
    this.MAX = 5;
    @this.circularIndexUtil = CircularIndexUtil::createInstance(this.MAX);
    
    
    
    }

    WeaponLayerArrayLayerCircularStaticPool@ jinit_WeaponLayerArrayLayerCircularStaticPool()
    {
        this.jfields_WeaponLayerArrayLayerCircularStaticPool();
        return this;
    }
    

    void init()
    {
        WeaponLayer@[]@[]@ WEAPONLAYER_ARRAY = array<WeaponLayer@[]@>(this.MAX * 2);
        WeaponLayer@[]@[]@ TWO_WEAPONLAYER_ARRAY = array<WeaponLayer@[]@>(this.MAX);
        WeaponLayer@[]@[]@ THREE_WEAPONLAYER_ARRAY = array<WeaponLayer@[]@>(this.MAX);
        for (int index = 0; index < this.MAX; index++) {
            @WEAPONLAYER_ARRAY[index] = array<WeaponLayer@>(1);
            @TWO_WEAPONLAYER_ARRAY[index] = array<WeaponLayer@>(2);
            @THREE_WEAPONLAYER_ARRAY[index] = array<WeaponLayer@>(3);
        }
        @this.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY;
        @this.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY;
        @this.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY;
    }
    

    WeaponLayer@[]@[]@ getWeaponLayerArrays(int size)
    {
        if (size == 1) {
            return this.WEAPONLAYER_ARRAY;
        } else if (size == 2) {
            return this.TWO_WEAPONLAYER_ARRAY;
        } else if (size == 3) {
            return this.THREE_WEAPONLAYER_ARRAY;
        }
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    WeaponLayer@[]@ getInstanceArray(int size)
    {
        WeaponLayer@[]@ weaponLayerArray = this.getWeaponLayerArrays(size)[this.circularIndexUtil.getIndex()];
        this.circularIndexUtil.next();
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

