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
// package org.allbinary.game.tracking

class TrackingEvent : AllBinaryEventObject
{
    AllBinaryLayer@ layerInterface_TrackingEvent;

    // Java field initializers run after the super constructor
    void jfields_TrackingEvent()
    {
    @this.layerInterface_TrackingEvent = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    }
    

    TrackingEvent@ jinit_TrackingEvent(JObject@ allBinaryLayerInterface)
    {
        this.jinit_AllBinaryEventObject(allBinaryLayerInterface);
        this.jfields_TrackingEvent();
        if (allBinaryLayerInterface !is TrackingEventHandler::getInstance()) {
            this.setLayerInterface(cast<AllBinaryLayer>(allBinaryLayerInterface));
        }
        return this;
    }
    

    void init(JObject@ anyType)
    {
        this.setSource(anyType);
    }
    

    AllBinaryLayer@ getLayerInterface()
    {
        return this.layerInterface_TrackingEvent;
    }
    

    void setLayerInterface(AllBinaryLayer@ layerInterface)
    {
        @this.layerInterface_TrackingEvent = layerInterface;
    }
    

    void setLayerInterfaceForCircularStaticPool(AllBinaryLayer@ layerInterface)
    {
        @this.layerInterface_TrackingEvent = layerInterface;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("TrackingEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.layerInterface_TrackingEvent.toString());
        return stringBuffer.toString();
    }
}

