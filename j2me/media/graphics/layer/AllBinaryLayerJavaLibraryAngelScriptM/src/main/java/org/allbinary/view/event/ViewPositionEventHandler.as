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
// package org.allbinary.view.event

class ViewPositionEventHandler : BasicEventHandler
{
    BasicArrayList@ list_ViewPositionEventHandler;

    // Java field initializers run after the super constructor
    void jfields_ViewPositionEventHandler()
    {
    @this.list_ViewPositionEventHandler = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    ViewPositionEventHandler@ jinit_ViewPositionEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_ViewPositionEventHandler();
        return this;
    }
    

    void addListener(AllBinaryLayer@ layerInterface)
    {
        if (!this.list_ViewPositionEventHandler.contains(layerInterface)) {
            this.list_ViewPositionEventHandler.add(layerInterface);
        }
    }
    

    void removeAllListeners()
    {
        this.list_ViewPositionEventHandler.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_ViewPositionEventHandler.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_ViewPositionEventHandler.size(); --index >= 0; ) {
            try {
                AllBinaryLayer@ layerInterface = cast<AllBinaryLayer>(this.list_ViewPositionEventHandler.objectArray[index]);
                layerInterface.onChangeEvent(cast<ViewPositionEvent>(eventObject));
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
        ViewPositionEventListenerInterface@ viewPositionEventListenerInterface = (cast<ViewPositionEventListenerInterface>(eventListenerInterface));
        viewPositionEventListenerInterface.onChangeEvent(cast<ViewPositionEvent>(eventObject));
    }
}

namespace ViewPositionEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = ViewPositionEventHandler().jinit_ViewPositionEventHandler();
    }

    ViewPositionEventHandler@ jcell_SINGLETON;
    ViewPositionEventHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(ViewPositionEventHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    ViewPositionEventHandler@ getInstance()
    {
        return ViewPositionEventHandler::SINGLETON;
    }
}

