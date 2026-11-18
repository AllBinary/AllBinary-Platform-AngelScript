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
// package org.allbinary.game.layer.special

class CollidableDestroyableDamageableBehavior : CollidableBaseBehavior
{
    DamageUtil@ damageUtil;

    // Java field initializers run after the super constructor
    void jfields_CollidableDestroyableDamageableBehavior()
    {
    @this.damageUtil = DamageUtil::getInstance();
    }
    

    CollidableDestroyableDamageableBehavior@ jinit_CollidableDestroyableDamageableBehavior(bool collidable)
    {
        this.jinit_CollidableBaseBehavior(collidable);
        this.jfields_CollidableDestroyableDamageableBehavior();
        return this;
    }
    

    bool isCollision(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ collisionLayer)
    {
        if (ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]) {
            return CollidableBaseBehavior::isCollision(ownerLayer, collisionLayer);
        }
        return false;
    }
    

    void collide(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ collidableInterfaceCompositeInterface)
    {
        CollidableDestroyableDamageableLayer@ ownerCollidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(ownerLayer);
        CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(collidableInterfaceCompositeInterface);
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0);
    }
    

    bool isCollisionInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        ForcedLogUtil::log("No Longer Used", this);
        return false;
    }
    

    void collideInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        ForcedLogUtil::log("No Longer Used", this);
    }
}

