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
// package org.allbinary.layer

class LayerProcessor : JObjectBase, LayerProcessorInterface
{
    CommonStrings@ commonStrings;
    ABLayerManager@ layerManager_LayerProcessor;

    // Java field initializers run after the super constructor
    void jfields_LayerProcessor()
    {
    @this.commonStrings = CommonStrings::getInstance();
    
    }
    

    LayerProcessor@ jinit_LayerProcessor(ABLayerManager@ layerManager)
    {
        this.jfields_LayerProcessor();
        @this.layerManager_LayerProcessor = layerManager;
        return this;
    }
    

    void processAt(AllBinaryLayerManager@ allBinaryLayerManager, AllBinaryLayer@ layerInterface, int index)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    bool isProcessorLayer(AllBinaryLayer@ layerInterface)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return false;
    }
    

    ABLayerManager@ getLayerManager()
    {
        return this.layerManager_LayerProcessor;
    }
    

    void process(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        ABLayerManager@ layerManager = this.getLayerManager();
        int size = layerManager.getSize();
        for (int index = 0; index < size; index++) {
            this.processAt(allBinaryLayerManager, cast<AllBinaryLayer>(layerManager.getLayerAt(index)), index);
        }
    }
}

