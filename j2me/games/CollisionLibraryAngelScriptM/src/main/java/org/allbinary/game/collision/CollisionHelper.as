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

class CollisionHelper : JObjectBase
{
    AllBinaryLayer@ sourceLayerInterface;
    

    CollisionHelper@ jinit_CollisionHelper(AllBinaryLayer@ sourceLayerInterface)
    {
        @this.sourceLayerInterface = sourceLayerInterface;
        return this;
    }
    

    bool isCollidable(CollidableCompositeLayer@ layerInterface)
    {
        return true;
    }
    

    AllBinaryLayer@ getOwnerLayerInterface()
    {
        return this.sourceLayerInterface;
    }
    

    void setOwnerLayerInterface(AllBinaryLayer@ sourceLayerInterface)
    {
        @this.sourceLayerInterface = sourceLayerInterface;
    }
}

