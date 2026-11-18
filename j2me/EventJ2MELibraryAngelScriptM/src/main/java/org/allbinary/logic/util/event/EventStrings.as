/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.util.event

class EventStrings : JObjectBase
{
    string PERFORMANCE_MESSAGE;
    string TOTAL_LISTENERS;
    string LISTENER_LABEL;
    string FIRE_EVENT;

    // Java field initializers run after the super constructor
    void jfields_EventStrings()
    {
    this.PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
    this.TOTAL_LISTENERS = "Total Listeners: ";
    this.LISTENER_LABEL = " Listener: ";
    this.FIRE_EVENT = "fireEvent";
    }

    EventStrings@ jinit_EventStrings()
    {
        this.jfields_EventStrings();
        return this;
    }
}

namespace EventStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = EventStrings().jinit_EventStrings();
    }

    EventStrings@ jcell_instance;
    EventStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(EventStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    EventStrings@ getInstance()
    {
        return EventStrings::instance;
    }
}

