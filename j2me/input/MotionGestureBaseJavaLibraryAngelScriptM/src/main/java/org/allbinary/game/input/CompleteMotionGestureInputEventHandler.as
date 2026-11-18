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
// package org.allbinary.game.input

class CompleteMotionGestureInputEventHandler : BasicEventHandler
{
    BasicArrayList@ list_CompleteMotionGestureInputEventHandler;

    // Java field initializers run after the super constructor
    void jfields_CompleteMotionGestureInputEventHandler()
    {
    @this.list_CompleteMotionGestureInputEventHandler = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    CompleteMotionGestureInputEventHandler@ jinit_CompleteMotionGestureInputEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_CompleteMotionGestureInputEventHandler();
        return this;
    }
    

    void addListener(CompleteMotionGestureInputEventListener@ completeMotionGestureInputEventListener)
    {
        if (!this.list_CompleteMotionGestureInputEventHandler.contains(completeMotionGestureInputEventListener)) {
            this.list_CompleteMotionGestureInputEventHandler.add(completeMotionGestureInputEventListener);
        }
    }
    

    void removeAllListeners()
    {
        this.list_CompleteMotionGestureInputEventHandler.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_CompleteMotionGestureInputEventHandler.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_CompleteMotionGestureInputEventHandler.size(); --index >= 0; ) {
            try {
                CompleteMotionGestureInputEventListener@ completeMotionGestureInputEventListener = cast<CompleteMotionGestureInputEventListener>(this.list_CompleteMotionGestureInputEventHandler.objectArray[index]);
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(cast<CompleteMotionGestureInputEvent>(eventObject));
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex0); }
            }
        }
        BasicEventHandler::fireEvent(eventObject);
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        CompleteMotionGestureInputEventListenerInterface@ completeMotionGestureInputEventListenerInterface = cast<CompleteMotionGestureInputEventListenerInterface>(eventListenerInterface);
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent(cast<CompleteMotionGestureInputEvent>(eventObject));
    }
}

namespace CompleteMotionGestureInputEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = CompleteMotionGestureInputEventHandler().jinit_CompleteMotionGestureInputEventHandler();
    }

    CompleteMotionGestureInputEventHandler@ jcell_SINGLETON;
    CompleteMotionGestureInputEventHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(CompleteMotionGestureInputEventHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    CompleteMotionGestureInputEventHandler@ getInstance()
    {
        return CompleteMotionGestureInputEventHandler::SINGLETON;
    }
}

