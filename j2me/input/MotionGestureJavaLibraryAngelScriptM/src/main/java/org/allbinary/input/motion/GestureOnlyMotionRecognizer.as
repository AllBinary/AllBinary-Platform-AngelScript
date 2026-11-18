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

class GestureOnlyMotionRecognizer : MotionRecognizer
{
    MotionGestureRecognizer@ motionGestureRecognizer_GestureOnlyMotionRecognizer;
    int id_GestureOnlyMotionRecognizer;
    

    GestureOnlyMotionRecognizer@ jinit_GestureOnlyMotionRecognizer()
    {
        this.jinit_MotionRecognizer();
        this.id_GestureOnlyMotionRecognizer = ((GestureOnlyMotionRecognizer::index = GestureOnlyMotionRecognizer::index + 1) - 1);
        @this.motionGestureRecognizer_GestureOnlyMotionRecognizer = MotionGestureRecognizer().jinit_MotionGestureRecognizer(this.id_GestureOnlyMotionRecognizer);
        return this;
    }
    

    void processStartMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        CustomGPoint@ point = cast<CustomGPoint>(GestureOnlyMotionRecognizer::pointCircularPool.getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer_GestureOnlyMotionRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
    }
    

    void processEndMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        CustomGPoint@ point = cast<CustomGPoint>(GestureOnlyMotionRecognizer::pointCircularPool.getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer_GestureOnlyMotionRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
    }
    

    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers)
    {
        CustomGPoint@ point = cast<CustomGPoint>(GestureOnlyMotionRecognizer::pointCircularPool.getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer_GestureOnlyMotionRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
    }
}

namespace GestureOnlyMotionRecognizer
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

