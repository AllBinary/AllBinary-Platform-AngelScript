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

class ScrolledMotionGesturesHandler : BasicEventHandler
{
    

    ScrolledMotionGesturesHandler@ jinit_ScrolledMotionGesturesHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        BaseMotionGestureEventListener@ baseMotionGestureEventListener = cast<BaseMotionGestureEventListener>(eventListenerInterface);
        baseMotionGestureEventListener.onScrolledMotionGestureEvent(cast<MotionGestureEvent>(eventObject));
    }
}

namespace ScrolledMotionGesturesHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = ScrolledMotionGesturesHandler().jinit_ScrolledMotionGesturesHandler();
    }

    ScrolledMotionGesturesHandler@ jcell_SINGLETON;
    ScrolledMotionGesturesHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(ScrolledMotionGesturesHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    ScrolledMotionGesturesHandler@ getInstance()
    {
        return ScrolledMotionGesturesHandler::SINGLETON;
    }
}

