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

class StraightMultiProjectileWeaponPart : BasicWeaponPart
{
    WeaponLayerCircularPool@ weaponLayerCircularStaticPool_StraightMultiProjectileWeaponPart;
    int total_StraightMultiProjectileWeaponPart;
    NoDecimalTrigTable@ noDecimalTrigTable_StraightMultiProjectileWeaponPart;

    // Java field initializers run after the super constructor
    void jfields_StraightMultiProjectileWeaponPart()
    {
    
    
    @this.noDecimalTrigTable_StraightMultiProjectileWeaponPart = NoDecimalTrigTable::getInstance();
    }
    

    StraightMultiProjectileWeaponPart@ jinit_StraightMultiProjectileWeaponPart(Animation@ animationInterface, AllBinaryLayer@ sourceLayerInterface, WeaponLayerCircularPool@ weaponLayerCircularStaticPool, int total, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface, RelativeRelationship@ relativeRelationship)
    {
        this.jinit_BasicWeaponPart(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.jfields_StraightMultiProjectileWeaponPart();
        this.total_StraightMultiProjectileWeaponPart = total;
        @this.weaponLayerCircularStaticPool_StraightMultiProjectileWeaponPart = weaponLayerCircularStaticPool;
        return this;
    }
    

    void processScore(AllBinaryLayerManager@ allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface)
    {
        AllBinaryLayer@ sourceLayerInterface = this.getOwnerLayerInterface();
        int reducedWidth = (sourceLayerInterface.getWidth() * 8 / 10);
        int halfWidth = (reducedWidth >>> 1);
        int x = this.relativeRelationship.getX();
        int y = this.relativeRelationship.getY();
        int64 sine = 0;
        int beamX = 0;
        int64 cosine = 0;
        int beamY = 0;
        WeaponLayer@ weaponLayer;
        int increment = reducedWidth / (this.total_StraightMultiProjectileWeaponPart - 1);
        int next = -halfWidth;
        for (int index = 0; index < this.total_StraightMultiProjectileWeaponPart; index++) {
            sine = (int64(next) * this.noDecimalTrigTable_StraightMultiProjectileWeaponPart.sin(int(angle)));
            beamX = int((sine / int64(this.noDecimalTrigTable_StraightMultiProjectileWeaponPart.SCALE)));
            cosine = (int64(next) * this.noDecimalTrigTable_StraightMultiProjectileWeaponPart.cos(int(angle)));
            beamY = -int((cosine / int64(this.noDecimalTrigTable_StraightMultiProjectileWeaponPart.SCALE)));
            @weaponLayer = this.weaponLayerCircularStaticPool_StraightMultiProjectileWeaponPart.getInstanceWeaponLayer(sourceLayerInterface, x + beamX, y + beamY, 0, int(angle), int(otherAngle), weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += increment;
        }
    }
}

namespace StraightMultiProjectileWeaponPart
{
    

    StraightMultiProjectileWeaponPart@ createStraightMultiProjectileWeaponPart(Animation@ animationInterface, WeaponLayerCircularPool@ weaponLayerCircularStaticPool)
    {
        return StraightMultiProjectileWeaponPart().jinit_StraightMultiProjectileWeaponPart(animationInterface, AllBinaryLayer::NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties::NULL_WEAPON_PROPERTIES, NoScoreable::getInstance(), RelativeRelationship::NULL_RELATIVE_RELATIONSHIP);
    }
}

