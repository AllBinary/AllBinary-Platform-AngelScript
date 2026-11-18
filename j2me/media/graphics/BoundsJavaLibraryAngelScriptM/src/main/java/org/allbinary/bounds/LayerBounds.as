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
// package org.allbinary.bounds

class LayerBounds : JObjectBase, BoundsChangeEventListener
{
    LogUtil@ logUtil;
    Rectangle@ rectangle;

    // Java field initializers run after the super constructor
    void jfields_LayerBounds()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    LayerBounds@ jinit_LayerBounds(Rectangle@ rectangle)
    {
        this.jfields_LayerBounds();
        @this.rectangle = rectangle;
        return this;
    }
    

    Rectangle@ getRectangleP()
    {
        return this.rectangle;
    }
    

    void visit(BoundsVisitorInterface@ boundsVisitorInterface)
    {
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onBoundsChangeEvent(BoundsChangeEvent@ boundsChangeEvent)
    {
        @this.rectangle = boundsChangeEvent.getRectangle();
    }
}

