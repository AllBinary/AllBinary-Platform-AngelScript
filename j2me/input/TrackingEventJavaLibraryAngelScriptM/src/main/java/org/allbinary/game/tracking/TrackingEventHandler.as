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
// package org.allbinary.game.tracking

class TrackingEventHandler : BasicEventHandler
{
    

    TrackingEventHandler@ jinit_TrackingEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        TrackingEventListenerInterface@ trackingEventListenerInterface = cast<TrackingEventListenerInterface>(eventListenerInterface);
        trackingEventListenerInterface.onMovement(cast<TrackingEvent>(eventObject));
    }
}

namespace TrackingEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TrackingEventHandler().jinit_TrackingEventHandler();
    }

    TrackingEventHandler@ jcell_instance;
    TrackingEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TrackingEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    TrackingEventHandler@ getInstance()
    {
        return TrackingEventHandler::instance;
    }
}

