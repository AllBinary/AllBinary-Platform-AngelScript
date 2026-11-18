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
// package org.allbinary.input.motion.gesture.observer

class MotionGestureEvent : AllBinaryEventObject
{
    MotionGestureInput@ motionGesture_MotionGestureEvent;
    int id_MotionGestureEvent;
    GPoint@ previousPoint_MotionGestureEvent;
    GPoint@ currentPoint_MotionGestureEvent;
    CommonLabels@ commonLabels_MotionGestureEvent;

    // Java field initializers run after the super constructor
    void jfields_MotionGestureEvent()
    {
    @this.motionGesture_MotionGestureEvent = TouchMotionGestureFactory::getInstance().NO_MOTION;
    
    @this.previousPoint_MotionGestureEvent = PointFactory::getInstance().ZERO_ZERO;
    @this.currentPoint_MotionGestureEvent = PointFactory::getInstance().ZERO_ZERO;
    @this.commonLabels_MotionGestureEvent = CommonLabels::getInstance();
    }
    

    MotionGestureEvent@ jinit_MotionGestureEvent(JObject@ source, int id, MotionGestureInput@ motionGesture)
    {
        this.jinit_AllBinaryEventObject(source);
        this.jfields_MotionGestureEvent();
        this.id_MotionGestureEvent = id;
        this.setMotionGesture(motionGesture);
        return this;
    }
    

    MotionGestureInput@ getMotionGesture()
    {
        return this.motionGesture_MotionGestureEvent;
    }
    

    void setMotionGesture(MotionGestureInput@ motionGesture)
    {
        @this.motionGesture_MotionGestureEvent = motionGesture;
    }
    

    GPoint@ getPreviousPoint()
    {
        return this.previousPoint_MotionGestureEvent;
    }
    

    void setPreviousPoint(GPoint@ previousPoint)
    {
        @this.previousPoint_MotionGestureEvent = previousPoint;
    }
    

    GPoint@ getCurrentPoint()
    {
        return this.currentPoint_MotionGestureEvent;
    }
    

    void setCurrentPoint(GPoint@ currentPoint)
    {
        @this.currentPoint_MotionGestureEvent = currentPoint;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        StringUtil@ stringUtil = StringUtil::getInstance();
        stringBuffer.append(stringUtil.toString(this.motionGesture_MotionGestureEvent));
        stringBuffer.append(this.commonLabels_MotionGestureEvent.CURRENT);
        stringBuffer.append(stringUtil.toString(this.currentPoint_MotionGestureEvent));
        stringBuffer.append(MotionGestureEvent::PREVIOUS);
        stringBuffer.append(stringUtil.toString(this.previousPoint_MotionGestureEvent));
        stringBuffer.append(MotionGestureEvent::HASHCODE);
        stringBuffer.appendint(TsUtil::getInstance().hashCode(this));
        return stringBuffer.toString();
    }
    

    int getId()
    {
        return this.id_MotionGestureEvent;
    }
}

namespace MotionGestureEvent
{
    const string PREVIOUS = " Previous: ";
    const string HASHCODE = " hashcode: ";
}

