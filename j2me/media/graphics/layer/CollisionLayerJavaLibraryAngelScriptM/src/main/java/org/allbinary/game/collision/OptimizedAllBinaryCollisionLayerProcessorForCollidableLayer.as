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

class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer : LayerProcessor
{
    

    OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer@ jinit_OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer()
    {
        this.jinit_LayerProcessor(OptimizedAllBinaryCollisionLayerManager().jinit_OptimizedAllBinaryCollisionLayerManager());
        return this;
    }
    

    void processAt(AllBinaryLayerManager@ allBinaryLayerManager, AllBinaryLayer@ layerInterface, int startIndex)
    {
        CollidableCompositeLayer@ collidableInterfaceCompositeInterface = cast<CollidableCompositeLayer>(layerInterface);
        CollidableBaseBehavior@ collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface();
        if (collidableBase.isCollidable(collidableInterfaceCompositeInterface)) {
            ABLayerManager@ layerManager = this.getLayerManager();
            int size = layerManager.getSize();
            CollidableCompositeLayer@ collidableInterfaceCompositeInterface2;
            CollidableBaseBehavior@ collidableBase2;
            for (int index = startIndex + 1; index < size; index++) {
                @collidableInterfaceCompositeInterface2 = cast<CollidableCompositeLayer>(layerManager.getLayerAt(index));
                @collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface();
                if (collidableBase2.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)) {
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface);
                }
            }
        }
    }
    

    bool isProcessorLayer(AllBinaryLayer@ layerInterface)
    {
        if (layerInterface.implmentsCollidableInterface()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

