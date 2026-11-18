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
// package org.allbinary.game.input.motion.action

class NoCompleteMotionGestureInputEventListener : CompleteMotionGestureInputEventListener
{
    

    NoCompleteMotionGestureInputEventListener@ jinit_NoCompleteMotionGestureInputEventListener()
    {
        this.jinit_CompleteMotionGestureInputEventListener();
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent@ completeMotionGestureInputEvent)
    {
    }
}

namespace NoCompleteMotionGestureInputEventListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoCompleteMotionGestureInputEventListener().jinit_NoCompleteMotionGestureInputEventListener();
    }

    NoCompleteMotionGestureInputEventListener@ jcell_instance;
    NoCompleteMotionGestureInputEventListener@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NoCompleteMotionGestureInputEventListener@ value) property { jclinit(); @jcell_instance = value; }
    

    NoCompleteMotionGestureInputEventListener@ getInstance()
    {
        return NoCompleteMotionGestureInputEventListener::instance;
    }
}

