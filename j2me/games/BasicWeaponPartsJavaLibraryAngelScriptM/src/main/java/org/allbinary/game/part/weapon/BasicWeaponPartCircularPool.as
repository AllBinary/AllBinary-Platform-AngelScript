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
// package org.allbinary.game.part.weapon

class BasicWeaponPartCircularPool : JObjectBase
{
    BasicWeaponPart@ basicWeaponPart;

    // Java field initializers run after the super constructor
    void jfields_BasicWeaponPartCircularPool()
    {
    @this.basicWeaponPart = BasicWeaponPart::NULL_BASIC_WEAPON_PART;
    }

    BasicWeaponPartCircularPool@ jinit_BasicWeaponPartCircularPool()
    {
        this.jfields_BasicWeaponPartCircularPool();
        return this;
    }
    

    void init(BasicWeaponPartFactoryInterface@ basicWeaponPartFactoryInterface)
    {
        @this.basicWeaponPart = basicWeaponPartFactoryInterface.getInstance();
    }
    

    BasicWeaponPart@ getInstance(AllBinaryLayer@ sourceLayerInterface, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface, RelativeRelationship@ relativeRelationship)
    {
        this.basicWeaponPart.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return this.basicWeaponPart;
    }
}

namespace BasicWeaponPartCircularPool
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = BasicWeaponPartCircularPool().jinit_BasicWeaponPartCircularPool();
    }

    BasicWeaponPartCircularPool@ jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL;
    BasicWeaponPartCircularPool@ get_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL() property { jclinit(); return jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL; }
    void set_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL(BasicWeaponPartCircularPool@ value) property { jclinit(); @jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = value; }
}

