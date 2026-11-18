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

class MovedMotionGesturesHandler : BasicEventHandler
{
    

    MovedMotionGesturesHandler@ jinit_MovedMotionGesturesHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        BaseMotionGestureEventListener@ baseMotionGestureEventListener = cast<BaseMotionGestureEventListener>(eventListenerInterface);
        baseMotionGestureEventListener.onMotionGestureEvent(cast<MotionGestureEvent>(eventObject));
    }
}

namespace MovedMotionGesturesHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = MovedMotionGesturesHandler().jinit_MovedMotionGesturesHandler();
    }

    MovedMotionGesturesHandler@ jcell_SINGLETON;
    MovedMotionGesturesHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(MovedMotionGesturesHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    MovedMotionGesturesHandler@ getInstance()
    {
        return MovedMotionGesturesHandler::SINGLETON;
    }
}

