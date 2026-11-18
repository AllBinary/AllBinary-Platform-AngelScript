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

class TickableLayerProcessor : LayerProcessor
{
    

    TickableLayerProcessor@ jinit_TickableLayerProcessor()
    {
        this.jinit_LayerProcessor(TickableLayerManager().jinit_TickableLayerManager());
        return this;
    }
    

    void processAt(AllBinaryLayerManager@ allBinaryLayerManager, AllBinaryLayer@ layerInterface, int index)
    {
        TickableInterface@ tickableInterface = cast<TickableInterface>(layerInterface);
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

