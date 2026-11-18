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
// package org.allbinary.layer.event

class ScrollMapEventHandler : BasicEventHandler
{
    

    ScrollMapEventHandler@ jinit_ScrollMapEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        ScrollMapEventListenerInterface@ scrollMapEventListenerInterface = (cast<ScrollMapEventListenerInterface>(eventListenerInterface));
        scrollMapEventListenerInterface.onMoveEvent(cast<ScrollMapEvent>(eventObject));
    }
}

namespace ScrollMapEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = ScrollMapEventHandler().jinit_ScrollMapEventHandler();
    }

    ScrollMapEventHandler@ jcell_SINGLETON;
    ScrollMapEventHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(ScrollMapEventHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    ScrollMapEventHandler@ getInstance()
    {
        return ScrollMapEventHandler::SINGLETON;
    }
}

