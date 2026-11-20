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

class CollidableWeaponBehavior : CollidableDestroyableDamageableBehavior
{
    bool collided_CollidableWeaponBehavior;
    CollisionHelper@ collisionHelper;
    

    CollidableWeaponBehavior@ jinit_CollidableWeaponBehavior(bool collidable)
    {
        this.jinit_CollidableDestroyableDamageableBehavior(collidable);
        this.setCollided(false);
        this.setCollidable(true);
        @this.collisionHelper = CollidableHelperFactory::getInstance();
        return this;
    }
    

    void init(AllBinaryLayer@ sourceLayerInterface)
    {
        this.setCollided(false);
        this.collisionHelper.setOwnerLayerInterface(sourceLayerInterface);
    }
    

    bool isCollision(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ collisionLayer)
    {
        if (this.collisionHelper.isCollidable(collisionLayer)) {
            if (ownerLayer.getGroupInterface()[0] !is collisionLayer.getGroupInterface()[0]) {
                return CollidableDestroyableDamageableBehavior::isCollision(ownerLayer, collisionLayer);
            }
        }
        return false;
    }
    

    void collide(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ collisionLayer)
    {
        CollidableDestroyableDamageableBehavior::collide(ownerLayer, collisionLayer);
        this.collided_CollidableWeaponBehavior = true;
    }
    

    bool isCollisionInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        if (this.collisionHelper.isCollidable(cast<CollidableCompositeLayer>(collidableInterfaceCompositeInterface))) {
            AllBinaryLayer@ layerInterface = cast<AllBinaryLayer>(collidableInterfaceCompositeInterface);
            if (ownerLayer.getGroupInterface()[0] !is layerInterface.getGroupInterface()[0]) {
                if (this.layerCollisionUtil.isCollision(ownerLayer, layerInterface)) {
                    return true;
                }
            }
        }
        return false;
    }
    

    void collideInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        DamageableInterface@ ownerDamageableInterface = cast<DamageableInterface>(ownerLayer);
        DamageableInterface@ damageableInterface = cast<DamageableInterface>(collidableInterfaceCompositeInterface);
        this.damageUtil.process(ownerDamageableInterface, damageableInterface);
        this.collided_CollidableWeaponBehavior = true;
    }
    

    CollisionType@ getCollisionTypeWith(AllBinaryLayer@ layerInterface)
    {
        return CollisionTypeFactory::getInstance().COLLISION;
    }
    

    bool isCollided()
    {
        return this.collided_CollidableWeaponBehavior;
    }
    

    void setCollided(bool collided)
    {
        this.collided_CollidableWeaponBehavior = collided;
    }
}

namespace CollidableWeaponBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR;
    JObject@ get_NULL_COLLIDABLE_WEAPON_BEHAVIOR() property { jclinit(); return jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR; }
    void set_NULL_COLLIDABLE_WEAPON_BEHAVIOR(JObject@ value) property { jclinit(); @jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR = value; }
    

    CollidableWeaponBehavior@ getNullInstance()
    {
        if (CollidableWeaponBehavior::NULL_COLLIDABLE_WEAPON_BEHAVIOR is NullUtil::getInstance().NULL_OBJECT) {
            @CollidableWeaponBehavior::NULL_COLLIDABLE_WEAPON_BEHAVIOR = CollidableWeaponBehavior().jinit_CollidableWeaponBehavior(false);
        }
        return cast<CollidableWeaponBehavior>(CollidableWeaponBehavior::NULL_COLLIDABLE_WEAPON_BEHAVIOR);
    }
}

