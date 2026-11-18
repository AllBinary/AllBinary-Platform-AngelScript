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
// package org.allbinary.game.combat.destroy.event

class DestroyedEvent : AllBinaryEventObject
{
    AllBinaryGameCanvas@ allBinaryGameCanvas_DestroyedEvent;
    AllBinaryLayer@ allBinaryLayerInterface_DestroyedEvent;

    // Java field initializers run after the super constructor
    void jfields_DestroyedEvent()
    {
    @this.allBinaryGameCanvas_DestroyedEvent = NullGameCanvas::getInstance();
    @this.allBinaryLayerInterface_DestroyedEvent = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    }
    

    DestroyedEvent@ jinit_DestroyedEvent(AllBinaryGameCanvas@ combatGameCanvas)
    {
        this.jinit_AllBinaryEventObject(DestroyedEventHandler::getInstance());
        this.jfields_DestroyedEvent();
        this.setAllBinaryGameCanvas(combatGameCanvas);
        return this;
    }
    

    AllBinaryGameCanvas@ getAllBinaryGameCanvas()
    {
        return this.allBinaryGameCanvas_DestroyedEvent;
    }
    

    AllBinaryLayer@ getLayerInterface()
    {
        return this.allBinaryLayerInterface_DestroyedEvent;
    }
    

    void setAllBinaryGameCanvas(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        @this.allBinaryGameCanvas_DestroyedEvent = allBinaryGameCanvas;
    }
    

    void setLayerInterfaceForCircularStaticPool(AllBinaryLayer@ allBinaryLayerInterface)
    {
        @this.allBinaryLayerInterface_DestroyedEvent = allBinaryLayerInterface;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("DestroyedEvent: \n");
        stringBuffer.append("AllBinaryLayerInterface: ");
        stringBuffer.append(this.allBinaryLayerInterface_DestroyedEvent.toString());
        stringBuffer.append("\nAllBinaryGameCanvas: ");
        stringBuffer.append(StringUtil::getInstance().toString(this.getAllBinaryGameCanvas()));
        return stringBuffer.toString();
    }
}

