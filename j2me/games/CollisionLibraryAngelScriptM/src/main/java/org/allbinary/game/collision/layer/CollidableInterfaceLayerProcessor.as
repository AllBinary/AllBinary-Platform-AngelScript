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
// package org.allbinary.game.collision.layer

class CollidableInterfaceLayerProcessor : LayerProcessor
{
    

    CollidableInterfaceLayerProcessor@ jinit_CollidableInterfaceLayerProcessor()
    {
        this.jinit_LayerProcessor(CollidableInterfaceLayerManager().jinit_CollidableInterfaceLayerManager());
        return this;
    }
    

    void processAt(AllBinaryLayerManager@ allBinaryLayerManager, AllBinaryLayer@ layerInterface, int index)
    {
        CollidableInterfaceCompositeInterface@ collidableInterfaceCompositeInterface = cast<CollidableInterfaceCompositeInterface>(layerInterface);
        if (collidableInterfaceCompositeInterface.getCollidableInferface().isCollidable(cast<CollidableCompositeLayer>(collidableInterfaceCompositeInterface))) {
            AllBinaryCollisionManager::getInstance().process(this.getLayerManager(), collidableInterfaceCompositeInterface, index);
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

