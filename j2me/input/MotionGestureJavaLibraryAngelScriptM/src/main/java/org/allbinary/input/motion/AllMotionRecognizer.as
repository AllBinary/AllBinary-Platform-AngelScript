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
// package org.allbinary.input.motion

class AllMotionRecognizer : MotionRecognizer
{
    LogUtil@ logUtil;
    MotionGestureRecognizer@ motionGestureRecognizer_AllMotionRecognizer;
    bool touchButtonProcessing_AllMotionRecognizer;
    TouchButtonRecognizer@ touchButtonRecognizer_AllMotionRecognizer;
    int id_AllMotionRecognizer;
    int lastX_AllMotionRecognizer;
    int lastY_AllMotionRecognizer;

    // Java field initializers run after the super constructor
    void jfields_AllMotionRecognizer()
    {
    @this.logUtil = LogUtil::getInstance();
    
    this.touchButtonProcessing_AllMotionRecognizer = false;
    
    
    
    
    }
    

    AllMotionRecognizer@ jinit_AllMotionRecognizer()
    {
        this.jinit_MotionRecognizer();
        this.jfields_AllMotionRecognizer();
        this.id_AllMotionRecognizer = ((AllMotionRecognizer::index = AllMotionRecognizer::index + 1) - 1);
        @this.motionGestureRecognizer_AllMotionRecognizer = MotionGestureRecognizer().jinit_MotionGestureRecognizer(this.id_AllMotionRecognizer);
        @this.touchButtonRecognizer_AllMotionRecognizer = TouchButtonRecognizer().jinit_TouchButtonRecognizer();
        return this;
    }
    

    void processStartMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        if (this.touchButtonRecognizer_AllMotionRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing_AllMotionRecognizer = true;
        }
        if (!this.touchButtonProcessing_AllMotionRecognizer) {
            CustomGPoint@ point = cast<CustomGPoint>(AllMotionRecognizer::pointCircularPool.getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer_AllMotionRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    void processEndMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        if (this.touchButtonRecognizer_AllMotionRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
        }
        if (!this.touchButtonProcessing_AllMotionRecognizer) {
            CustomGPoint@ point = cast<CustomGPoint>(AllMotionRecognizer::pointCircularPool.getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer_AllMotionRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
        }
        if (this.touchButtonProcessing_AllMotionRecognizer) {
            this.touchButtonProcessing_AllMotionRecognizer = false;
        }
    }
    

    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        if (this.touchButtonProcessing_AllMotionRecognizer) {
            this.touchButtonRecognizer_AllMotionRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
        if (!this.touchButtonProcessing_AllMotionRecognizer) {
            CustomGPoint@ point = cast<CustomGPoint>(AllMotionRecognizer::pointCircularPool.getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer_AllMotionRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    void processMovedMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        if (x != this.lastX_AllMotionRecognizer || y != this.lastY_AllMotionRecognizer) {
            this.lastX_AllMotionRecognizer = x;
            this.lastY_AllMotionRecognizer = y;
            CustomGPoint@ point = cast<CustomGPoint>(AllMotionRecognizer::pointCircularPool.getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer_AllMotionRecognizer.processMovedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    void processScrolledMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        CustomGPoint@ point = cast<CustomGPoint>(AllMotionRecognizer::pointCircularPool.getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer_AllMotionRecognizer.processScrolledMotionEvent(point, deviceId, modifiers);
    }
    

    MotionGestureRecognizer@ getMotionGestureRecognizer()
    {
        return this.motionGestureRecognizer_AllMotionRecognizer;
    }
}

namespace AllMotionRecognizer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_index = 0;
        @jcell_pointCircularPool = GPointCircularPool().jinit_GPointCircularPool(40);
    }

    int jcell_index;
    int get_index() property { jclinit(); return jcell_index; }
    void set_index(int value) property { jclinit(); jcell_index = value; }

    GPointCircularPool@ jcell_pointCircularPool;
    GPointCircularPool@ get_pointCircularPool() property { jclinit(); return jcell_pointCircularPool; }
    void set_pointCircularPool(GPointCircularPool@ value) property { jclinit(); @jcell_pointCircularPool = value; }
}

