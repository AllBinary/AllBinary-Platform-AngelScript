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

class BasicProjectileWeaponPart : BasicWeaponPart
{
    WeaponLayerCircularPool@ weaponLayerCircularStaticPool_BasicProjectileWeaponPart;
    

    BasicProjectileWeaponPart@ jinit_BasicProjectileWeaponPart(Animation@ animationInterface, AllBinaryLayer@ sourceLayerInterface, WeaponLayerCircularPool@ weaponLayerCircularStaticPool, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface, RelativeRelationship@ relativeRelationship)
    {
        this.jinit_BasicWeaponPart(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        @this.weaponLayerCircularStaticPool_BasicProjectileWeaponPart = weaponLayerCircularStaticPool;
        return this;
    }
    

    void processScore(AllBinaryLayerManager@ allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface)
    {
        WeaponLayer@ weaponLayer = this.weaponLayerCircularStaticPool_BasicProjectileWeaponPart.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), this.relativeRelationship.getZ(), int(angle), int(otherAngle), weaponProperties, scoreableInterface);
        allbinaryLayerManager.append(weaponLayer);
    }
}

namespace BasicProjectileWeaponPart
{
    

    BasicProjectileWeaponPart@ createBasicProjectileWeaponPart(Animation@ animationInterface, WeaponLayerCircularPool@ weaponLayerCircularStaticPool)
    {
        return BasicProjectileWeaponPart().jinit_BasicProjectileWeaponPart(animationInterface, AllBinaryLayer::NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties::NULL_WEAPON_PROPERTIES, NoScoreable::getInstance(), RelativeRelationship::NULL_RELATIVE_RELATIONSHIP);
    }
}

