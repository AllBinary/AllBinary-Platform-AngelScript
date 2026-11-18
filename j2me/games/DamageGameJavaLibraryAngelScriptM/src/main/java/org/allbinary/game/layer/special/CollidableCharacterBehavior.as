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

class CollidableCharacterBehavior : CollidableDestroyableDamageableBehavior
{
    

    CollidableCharacterBehavior@ jinit_CollidableCharacterBehavior(bool collidable)
    {
        this.jinit_CollidableDestroyableDamageableBehavior(collidable);
        return this;
    }
    

    void collide(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ collidableInterfaceCompositeInterface)
    {
        CollisionTypeFactory@ collisionTypeFactory = CollisionTypeFactory::getInstance();
        CollisionType@ collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType is collisionTypeFactory.PICKUP) {
            CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(ownerLayer);
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(cast<PickedUpLayerInterface>(collidableInterfaceCompositeInterface));
        } else {
            CollidableDestroyableDamageableBehavior::collide(ownerLayer, collidableInterfaceCompositeInterface);
        }
    }
    

    void collideInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        ForcedLogUtil::log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
}

