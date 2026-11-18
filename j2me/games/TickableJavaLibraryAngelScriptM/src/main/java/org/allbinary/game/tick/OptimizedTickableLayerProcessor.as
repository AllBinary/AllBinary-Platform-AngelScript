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
// package org.allbinary.game.tick

class OptimizedTickableLayerProcessor : LayerProcessor
{
    

    OptimizedTickableLayerProcessor@ jinit_OptimizedTickableLayerProcessor()
    {
        this.jinit_LayerProcessor(OptimizedTickableLayerManager().jinit_OptimizedTickableLayerManager());
        return this;
    }
    

    void processAt(AllBinaryLayerManager@ allBinaryLayerManager, AllBinaryLayer@ layerInterface, int index)
    {
        AllBinaryGameLayer@ tickableInterface = cast<AllBinaryGameLayer>(layerInterface);
        tickableInterface.processTick(allBinaryLayerManager);
    }
    

    bool isProcessorLayer(AllBinaryLayer@ layerInterface)
    {
        if (layerInterface.implmentsTickableInterface()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

