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

class AllBinaryLayerManager : ABLayerManager
{
    LayerManagerEventHandler@ layerManagerEventHandler_AllBinaryLayerManager;
    LayerManagerEvent@ createLayerManagerEvent_AllBinaryLayerManager;
    LayerManagerEvent@ deleteLayerManagerEvent_AllBinaryLayerManager;
    LayerProcessor@[]@ basicLayerProcessorArray_AllBinaryLayerManager;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryLayerManager()
    {
    @this.layerManagerEventHandler_AllBinaryLayerManager = LayerManagerEventHandler::getInstance();
    @this.createLayerManagerEvent_AllBinaryLayerManager = LayerManagerEvent().jinit_LayerManagerEvent(this, this.layerManagerEventHandler_AllBinaryLayerManager.CREATE);
    @this.deleteLayerManagerEvent_AllBinaryLayerManager = LayerManagerEvent().jinit_LayerManagerEvent(this, this.layerManagerEventHandler_AllBinaryLayerManager.DELETE);
    @this.basicLayerProcessorArray_AllBinaryLayerManager = array<LayerProcessor@>(0);
    }
    

    AllBinaryLayerManager@ jinit_AllBinaryLayerManager()
    {
        this.jinit_ABLayerManager(LayerManagerNoDebug::getInstance());
        this.jfields_AllBinaryLayerManager();
        return this;
    }
    

    LayerProcessor@[]@ getLayerProcessorArray()
    {
        return this.basicLayerProcessorArray_AllBinaryLayerManager;
    }
    

    void setLayerProcessorArray(LayerProcessor@[]@ layerProcessorArray)
    {
        @this.basicLayerProcessorArray_AllBinaryLayerManager = layerProcessorArray;
    }
    

    void log()
    {
        int size = int(this.basicLayerProcessorArray_AllBinaryLayerManager.length());
        for (int index = 0; index < size; index++) {
            LayerProcessor@ layerProcessorInterface = this.basicLayerProcessorArray_AllBinaryLayerManager[index];
        }
    }
    

    void append(AllBinaryLayer@ layerInterface)
    {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            ABLayerManager::append(layerInterface);
        }
    }
    

    void appendAt(AllBinaryLayer@ layerInterface, int index)
    {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            ABLayerManager::appendAt(layerInterface, index);
        }
    }
    

    void appendProcessors(AllBinaryLayer@ layerInterface)
    {
        this.createLayerManagerEvent_AllBinaryLayerManager.setLayerInterface(layerInterface);
        this.layerManagerEventHandler_AllBinaryLayerManager.fireEvent(this.createLayerManagerEvent_AllBinaryLayerManager);
        LayerProcessor@ layerProcessorInterface;
        for (int index = int(this.basicLayerProcessorArray_AllBinaryLayerManager.length()); --index >= 0; ) {
            @layerProcessorInterface = this.basicLayerProcessorArray_AllBinaryLayerManager[index];
            if (layerProcessorInterface.isProcessorLayer(layerInterface)) {
                layerProcessorInterface.getLayerManager().append(layerInterface);
            }
        }
    }
    

    void remove(AllBinaryLayer@ layerInterface)
    {
        this.deleteLayerManagerEvent_AllBinaryLayerManager.setLayerInterface(layerInterface);
        this.layerManagerEventHandler_AllBinaryLayerManager.fireDeleteEvent(this.deleteLayerManagerEvent_AllBinaryLayerManager);
        LayerProcessor@ layerProcessorInterface;
        for (int index = int(this.basicLayerProcessorArray_AllBinaryLayerManager.length()); --index >= 0; ) {
            @layerProcessorInterface = this.basicLayerProcessorArray_AllBinaryLayerManager[index];
            layerProcessorInterface.getLayerManager().remove(layerInterface);
        }
        ABLayerManager::remove(layerInterface);
    }
    

    void process()
    {
        LayerProcessor@ layerProcessorInterface;
        int size = int(this.basicLayerProcessorArray_AllBinaryLayerManager.length());
        for (int index = 0; index < size; index++) {
            @layerProcessorInterface = this.basicLayerProcessorArray_AllBinaryLayerManager[index];
            layerProcessorInterface.process(this);
        }
    }
    

    void cleanup()
    {
        LayerProcessor@ layerProcessorInterface;
        int size = int(this.basicLayerProcessorArray_AllBinaryLayerManager.length());
        for (int index = 0; index < size; index++) {
            @layerProcessorInterface = this.basicLayerProcessorArray_AllBinaryLayerManager[index];
            layerProcessorInterface.getLayerManager().cleanup();
        }
        ABLayerManager::cleanup();
    }
}

