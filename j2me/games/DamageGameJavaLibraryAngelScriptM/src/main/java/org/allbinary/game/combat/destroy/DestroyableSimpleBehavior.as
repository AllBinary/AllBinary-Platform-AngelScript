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
// package org.allbinary.game.combat.destroy

class DestroyableSimpleBehavior : DestroyableBaseBehavior
{
    CollidableCompositeLayer@ ownerLayer;
    bool destroyed_DestroyableSimpleBehavior;

    // Java field initializers run after the super constructor
    void jfields_DestroyableSimpleBehavior()
    {
    
    this.destroyed_DestroyableSimpleBehavior = false;
    }
    

    DestroyableSimpleBehavior@ jinit_DestroyableSimpleBehavior(CollidableCompositeLayer@ ownerLayer)
    {
        this.jinit_DestroyableBaseBehavior();
        this.jfields_DestroyableSimpleBehavior();
        @this.ownerLayer = ownerLayer;
        return this;
    }
    

    bool isDestroyed()
    {
        return this.destroyed_DestroyableSimpleBehavior;
    }
    

    void setDestroyed(bool destroyed)
    {
        this.destroyed_DestroyableSimpleBehavior = destroyed;
        if (this.isDestroyed()) {
            DestroyedLayerProcessor::getInstance().add(this.ownerLayer);
        }
    }
}

