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
// package org.allbinary.ai

class OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer : LayerProcessor
{
    

    OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer@ jinit_OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer()
    {
        this.jinit_LayerProcessor(OptimizedArtificialIntelligenceLayerManager().jinit_OptimizedArtificialIntelligenceLayerManager());
        return this;
    }
    

    void processAt(AllBinaryLayerManager@ allBinaryLayerManager, AllBinaryLayer@ layerInterface, int index)
    {
        CollidableCompositeLayer@ artificialIntelligenceCompositeInterface = cast<CollidableCompositeLayer>(layerInterface);
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager);
    }
    

    bool isProcessorLayer(AllBinaryLayer@ layerInterface)
    {
        if (layerInterface.implmentsArtificialIntelligenceCompositeInterface()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

