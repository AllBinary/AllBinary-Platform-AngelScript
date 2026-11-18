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
// package org.allbinary.input.gyro

class OrientationMotionGestureFactory : JObjectBase
{
    MotionGestureInput@ LEFT;
    MotionGestureInput@ RIGHT;
    MotionGestureInput@ UP;
    MotionGestureInput@ DOWN;
    MotionGestureInput@ ROLL_LEFT;
    MotionGestureInput@ ROLL_RIGHT;
    

    OrientationMotionGestureFactory@ jinit_OrientationMotionGestureFactory()
    {
        int MAX = InputFactory::getInstance().MAX;
        @this.LEFT = MotionGestureInput().jinit_MotionGestureInput(MAX - 20, "Left Orient");
        @this.RIGHT = MotionGestureInput().jinit_MotionGestureInput(MAX - 21, "Right Orient");
        @this.UP = MotionGestureInput().jinit_MotionGestureInput(MAX - 22, "Up Orient");
        @this.DOWN = MotionGestureInput().jinit_MotionGestureInput(MAX - 23, "Down Orient");
        @this.ROLL_LEFT = MotionGestureInput().jinit_MotionGestureInput(MAX - 24, "Roll Left");
        @this.ROLL_RIGHT = MotionGestureInput().jinit_MotionGestureInput(MAX - 25, "Roll Right");
        return this;
    }
}

namespace OrientationMotionGestureFactory
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
    

    OrientationMotionGestureFactory@ getInstance()
    {
        if (OrientationMotionGestureFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @OrientationMotionGestureFactory::instance = OrientationMotionGestureFactory().jinit_OrientationMotionGestureFactory();
        }
        return cast<OrientationMotionGestureFactory>(OrientationMotionGestureFactory::instance);
    }
}

