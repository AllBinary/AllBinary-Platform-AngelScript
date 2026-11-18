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
// package org.allbinary.input.motion.gesture

class TrackballMotionGestureFactory : JObjectBase
{
    MotionGestureInput@ LEFT;
    MotionGestureInput@ RIGHT;
    MotionGestureInput@ UP;
    MotionGestureInput@ DOWN;
    

    TrackballMotionGestureFactory@ jinit_TrackballMotionGestureFactory()
    {
        int MAX = InputFactory::getInstance().MAX;
        @this.LEFT = MotionGestureInput().jinit_MotionGestureInput(MAX - 26, "L Trackball");
        @this.RIGHT = MotionGestureInput().jinit_MotionGestureInput(MAX - 27, "R Trackball");
        @this.UP = MotionGestureInput().jinit_MotionGestureInput(MAX - 28, "Up Trackball");
        @this.DOWN = MotionGestureInput().jinit_MotionGestureInput(MAX - 29, "D Trackball");
        return this;
    }
}

namespace TrackballMotionGestureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    TrackballMotionGestureFactory@ getInstance()
    {
        if (TrackballMotionGestureFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @TrackballMotionGestureFactory::instance = TrackballMotionGestureFactory().jinit_TrackballMotionGestureFactory();
        }
        return cast<TrackballMotionGestureFactory>(TrackballMotionGestureFactory::instance);
    }
}

