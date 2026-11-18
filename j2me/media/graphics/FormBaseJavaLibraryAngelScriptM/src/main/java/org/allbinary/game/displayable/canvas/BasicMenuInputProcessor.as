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
// package org.allbinary.game.displayable.canvas

class BasicMenuInputProcessor : PlayerGameInput, BaseMotionGestureEventListener
{
    BasicArrayList@ motionGestureEventList;
    Canvas@ canvas_BasicMenuInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_BasicMenuInputProcessor()
    {
    @this.motionGestureEventList = BasicArrayListD().jinit_BasicArrayListD();
    @this.canvas_BasicMenuInputProcessor = NullCanvas::NULL_CANVAS;
    }
    

    BasicMenuInputProcessor@ jinit_BasicMenuInputProcessor(BasicArrayList@ gameKeyEventList, int playerInputId, Canvas@ gameCanvas)
    {
        this.jinit_PlayerGameInput(gameKeyEventList, BasicArrayListD().jinit_BasicArrayListD(), playerInputId);
        this.jfields_BasicMenuInputProcessor();
        @this.canvas_BasicMenuInputProcessor = gameCanvas;
        return this;
    }
    

    void onMotionGestureEvent(MotionGestureEvent@ motionGestureEvent)
    {
        this.motionGestureEventList.add(motionGestureEvent);
    }
    

    void onScrolledMotionGestureEvent(MotionGestureEvent@ motionGestureEvent)
    {
    }
    

    void setCanvas(MyCanvas@ canvas)
    {
        @this.canvas_BasicMenuInputProcessor = canvas;
    }
    

    MyCanvas@ getCanvas()
    {
        return cast<MyCanvas>(this.canvas_BasicMenuInputProcessor);
    }
    

    int processInputList()
    {
        return -1;
    }
}

