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

class BasicMotionGesturesHandler : BasicEventHandler
{
    

    BasicMotionGesturesHandler@ jinit_BasicMotionGesturesHandler()
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

namespace BasicMotionGesturesHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = BasicMotionGesturesHandler().jinit_BasicMotionGesturesHandler();
    }

    BasicMotionGesturesHandler@ jcell_SINGLETON;
    BasicMotionGesturesHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(BasicMotionGesturesHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    BasicMotionGesturesHandler@ getInstance()
    {
        return BasicMotionGesturesHandler::SINGLETON;
    }
}

