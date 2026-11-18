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
// package org.allbinary.input.event

class VirtualKeyboardEventHandler : BasicEventHandler
{
    VirtualKeyboardEvent@ SHOW_EVENT;
    VirtualKeyboardEvent@ HIDE_EVENT;

    // Java field initializers run after the super constructor
    void jfields_VirtualKeyboardEventHandler()
    {
    @this.SHOW_EVENT = VirtualKeyboardEvent().jinit_VirtualKeyboardEvent(BooleanFactory::getInstance().TRUE);
    @this.HIDE_EVENT = VirtualKeyboardEvent().jinit_VirtualKeyboardEvent(BooleanFactory::getInstance().FALSE);
    }
    

    VirtualKeyboardEventHandler@ jinit_VirtualKeyboardEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_VirtualKeyboardEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        VirtualKeyboardEventListenerInterface@ virtualKeyboardEventListenerInterface = cast<VirtualKeyboardEventListenerInterface>(eventListenerInterface);
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent(cast<VirtualKeyboardEvent>(eventObject));
    }
    

    void open()
    {
        try {
            Thread::sleep(120);
            this.fireEvent(this.SHOW_EVENT);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "open", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void close()
    {
        try {
            Thread::sleep(120);
            this.fireEvent(this.HIDE_EVENT);
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e);
            }
            else { jthrow(jex1); }
        }
    }
}

namespace VirtualKeyboardEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameKeyEventHandler = VirtualKeyboardEventHandler().jinit_VirtualKeyboardEventHandler();
    }

    VirtualKeyboardEventHandler@ jcell_gameKeyEventHandler;
    VirtualKeyboardEventHandler@ get_gameKeyEventHandler() property { jclinit(); return jcell_gameKeyEventHandler; }
    void set_gameKeyEventHandler(VirtualKeyboardEventHandler@ value) property { jclinit(); @jcell_gameKeyEventHandler = value; }
    

    VirtualKeyboardEventHandler@ getInstance()
    {
        return VirtualKeyboardEventHandler::gameKeyEventHandler;
    }
}

