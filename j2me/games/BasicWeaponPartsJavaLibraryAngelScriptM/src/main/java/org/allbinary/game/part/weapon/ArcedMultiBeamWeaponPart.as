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

class ArcedMultiBeamWeaponPart : BasicWeaponPart
{
    WeaponLayerCircularPool@ weaponLayerCircularStaticPool_ArcedMultiBeamWeaponPart;
    int total_ArcedMultiBeamWeaponPart;
    int TOTAL_ANGLE_ArcedMultiBeamWeaponPart;

    // Java field initializers run after the super constructor
    void jfields_ArcedMultiBeamWeaponPart()
    {
    
    
    this.TOTAL_ANGLE_ArcedMultiBeamWeaponPart = int(AngleFactory::getInstance().TOTAL_ANGLE);
    }
    

    ArcedMultiBeamWeaponPart@ jinit_ArcedMultiBeamWeaponPart(Animation@ animationInterface, AllBinaryLayer@ sourceLayerInterface, WeaponLayerCircularPool@ weaponLayerCircularStaticPool, int total, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface, RelativeRelationship@ relativeRelationship)
    {
        this.jinit_BasicWeaponPart(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.jfields_ArcedMultiBeamWeaponPart();
        this.total_ArcedMultiBeamWeaponPart = total;
        @this.weaponLayerCircularStaticPool_ArcedMultiBeamWeaponPart = weaponLayerCircularStaticPool;
        return this;
    }
    

    void processScore(AllBinaryLayerManager@ allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties@ weaponProperties, ScoreableInterface@ scoreableInterface)
    {
        int16 increment = int16(((this.total_ArcedMultiBeamWeaponPart - 1) / this.TOTAL_ANGLE_ArcedMultiBeamWeaponPart));
        int16 minAngle = int16((int(angle) - ((int(increment) * this.total_ArcedMultiBeamWeaponPart) >>> 1)));
        int next = 0;
        WeaponLayer@ weaponLayer;
        for (int index = 0; index < this.total_ArcedMultiBeamWeaponPart; index++) {
            @weaponLayer = this.weaponLayerCircularStaticPool_ArcedMultiBeamWeaponPart.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), 0, (minAngle + increment), int(otherAngle), weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += int(increment);
        }
    }
}

