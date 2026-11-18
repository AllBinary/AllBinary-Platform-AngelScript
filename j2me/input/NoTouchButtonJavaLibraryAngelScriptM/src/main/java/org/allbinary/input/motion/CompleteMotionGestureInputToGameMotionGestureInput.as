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

class CompleteMotionGestureInputToGameMotionGestureInput : JObjectBase
{
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_CompleteMotionGestureInputToGameMotionGestureInput()
    {
    @this.commonStrings = CommonStrings::getInstance();
    }

    CompleteMotionGestureInputToGameMotionGestureInput@ jinit_CompleteMotionGestureInputToGameMotionGestureInput()
    {
        this.jfields_CompleteMotionGestureInputToGameMotionGestureInput();
        return this;
    }
    

    void init()
    {
        PreLogUtil::put("No Touch Button = No Compound Motion Gestures", this, this.commonStrings.INIT);
    }
}

namespace CompleteMotionGestureInputToGameMotionGestureInput
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CompleteMotionGestureInputToGameMotionGestureInput().jinit_CompleteMotionGestureInputToGameMotionGestureInput();
    }

    CompleteMotionGestureInputToGameMotionGestureInput@ jcell_instance;
    CompleteMotionGestureInputToGameMotionGestureInput@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CompleteMotionGestureInputToGameMotionGestureInput@ value) property { jclinit(); @jcell_instance = value; }
    

    CompleteMotionGestureInputToGameMotionGestureInput@ getInstance()
    {
        return CompleteMotionGestureInputToGameMotionGestureInput::instance;
    }
}

