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

class CollidableDamageWeaponBehavior : CollidableDestroyableDamageableBehavior
{
    bool collided_CollidableDamageWeaponBehavior;
    CollisionHelper@ collisionHelper;
    

    CollidableDamageWeaponBehavior@ jinit_CollidableDamageWeaponBehavior(bool collidable)
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
            if (ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]) {
                return CollidableDestroyableDamageableBehavior::isCollision(ownerLayer, collisionLayer);
            }
        }
        return false;
    }
    

    void collide(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ collisionLayer)
    {
        CollidableDestroyableDamageableBehavior::collide(ownerLayer, collisionLayer);
        this.collided_CollidableDamageWeaponBehavior = true;
    }
    

    bool isCollisionInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        if (this.collisionHelper.isCollidable(cast<CollidableCompositeLayer>(collidableInterfaceCompositeInterface))) {
            AllBinaryLayer@ layerInterface = cast<AllBinaryLayer>(collidableInterfaceCompositeInterface);
            if (ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0]) {
                if (this.layerCollisionUtil.isCollision(ownerLayer, layerInterface)) {
                    return true;
                }
            }
        }
        return false;
    }
    

    void collideInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        this.damageUtil.process(cast<DamageableInterface>(ownerLayer), cast<DamageableInterface>(collidableInterfaceCompositeInterface));
        this.collided_CollidableDamageWeaponBehavior = true;
    }
    

    CollisionType@ getCollisionTypeWith(AllBinaryLayer@ layerInterface)
    {
        return CollisionTypeFactory::getInstance().COLLISION;
    }
    

    bool isCollided()
    {
        return this.collided_CollidableDamageWeaponBehavior;
    }
    

    void setCollided(bool collided)
    {
        this.collided_CollidableDamageWeaponBehavior = collided;
    }
}

