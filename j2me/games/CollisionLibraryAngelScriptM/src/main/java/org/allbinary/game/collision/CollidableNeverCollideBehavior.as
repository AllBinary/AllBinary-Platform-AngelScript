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
// package org.allbinary.game.collision

class CollidableNeverCollideBehavior : CollidableBaseBehavior
{
    

    CollidableNeverCollideBehavior@ jinit_CollidableNeverCollideBehavior(bool isCollidable)
    {
        this.jinit_CollidableBaseBehavior(isCollidable);
        return this;
    }
    

    bool isCollision(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ allbinaryCollidableLayer)
    {
        return false;
    }
    

    void collide(CollidableCompositeLayer@ ownerLayer, CollidableCompositeLayer@ allbinaryCollidableLayer)
    {
    }
    

    void collideInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
    }
    

    bool isCollisionInterface(CollidableCompositeLayer@ ownerLayer, CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface)
    {
        return false;
    }
}

