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

class TouchMotionGestureFactory : JObjectBase
{
    MotionGestureInput@ LEFT;
    MotionGestureInput@ RIGHT;
    MotionGestureInput@ UP;
    MotionGestureInput@ DOWN;
    MotionGestureInput@ PRESSED;
    MotionGestureInput@ RELEASED;
    MotionGestureInput@ DIAGONAL_DOWN_RIGHT;
    MotionGestureInput@ DIAGONAL_DOWN_LEFT;
    MotionGestureInput@ DIAGONAL_UP_RIGHT;
    MotionGestureInput@ DIAGONAL_UP_LEFT;
    MotionGestureInput@ SCROLL_UP;
    MotionGestureInput@ SCROLL_DOWN;
    MotionGestureInput@ NO_MOTION;
    MotionGestureInput@ LAST_MOTION;
    

    TouchMotionGestureFactory@ jinit_TouchMotionGestureFactory()
    {
        int MAX = InputFactory::getInstance().MAX;
        @this.LEFT = MotionGestureInput().jinit_MotionGestureInput(MAX - 3, "Left Touch");
        @this.RIGHT = MotionGestureInput().jinit_MotionGestureInput(MAX - 4, "Right Touch");
        @this.UP = MotionGestureInput().jinit_MotionGestureInput(MAX - 5, "Up Touch");
        @this.DOWN = MotionGestureInput().jinit_MotionGestureInput(MAX - 6, "Down Touch");
        @this.PRESSED = MotionGestureInput().jinit_MotionGestureInput(MAX - 7, "Screen Press");
        @this.RELEASED = MotionGestureInput().jinit_MotionGestureInput(MAX - 8, "Released");
        @this.DIAGONAL_DOWN_RIGHT = MotionGestureInput().jinit_MotionGestureInput(MAX - 9, "Diagonal Dn R");
        @this.DIAGONAL_DOWN_LEFT = MotionGestureInput().jinit_MotionGestureInput(MAX - 10, "Diagonal Dn L");
        @this.DIAGONAL_UP_RIGHT = MotionGestureInput().jinit_MotionGestureInput(MAX - 11, "Diagonal Up R");
        @this.DIAGONAL_UP_LEFT = MotionGestureInput().jinit_MotionGestureInput(MAX - 12, "Diagonal Up L");
        @this.SCROLL_UP = MotionGestureInput().jinit_MotionGestureInput(MAX - 13, "Scroll Up");
        @this.SCROLL_DOWN = MotionGestureInput().jinit_MotionGestureInput(MAX - 14, "Scroll Down");
        @this.NO_MOTION = MotionGestureInput().jinit_MotionGestureInput(MAX - 2, "No Motion");
        @this.LAST_MOTION = MotionGestureInput().jinit_MotionGestureInput(MAX - 19, "Last Motion");
        return this;
    }
}

namespace TouchMotionGestureFactory
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
    

    TouchMotionGestureFactory@ getInstance()
    {
        if (TouchMotionGestureFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @TouchMotionGestureFactory::instance = TouchMotionGestureFactory().jinit_TouchMotionGestureFactory();
        }
        return cast<TouchMotionGestureFactory>(TouchMotionGestureFactory::instance);
    }
}

