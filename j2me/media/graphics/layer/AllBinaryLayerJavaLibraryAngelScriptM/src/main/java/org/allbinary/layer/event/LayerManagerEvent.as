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
// package org.allbinary.layer.event

class LayerManagerEvent : AllBinaryEventObject
{
    AllBinaryLayer@ layerInterface_LayerManagerEvent;
    string crud_LayerManagerEvent;

    // Java field initializers run after the super constructor
    void jfields_LayerManagerEvent()
    {
    @this.layerInterface_LayerManagerEvent = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    
    }
    

    LayerManagerEvent@ jinit_LayerManagerEvent(ABLayerManager@ layerManager, string crud)
    {
        this.jinit_AllBinaryEventObject(layerManager);
        this.jfields_LayerManagerEvent();
        this.crud_LayerManagerEvent = crud;
        return this;
    }
    

    AllBinaryLayer@ getLayerInterface()
    {
        return this.layerInterface_LayerManagerEvent;
    }
    

    void setLayerInterface(AllBinaryLayer@ layerInterface)
    {
        @this.layerInterface_LayerManagerEvent = layerInterface;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("LayerManagerEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.getLayerInterface().toString());
        stringBuffer.append("\nCRUD: ");
        stringBuffer.append(this.crud_LayerManagerEvent);
        return stringBuffer.toString();
    }
}

