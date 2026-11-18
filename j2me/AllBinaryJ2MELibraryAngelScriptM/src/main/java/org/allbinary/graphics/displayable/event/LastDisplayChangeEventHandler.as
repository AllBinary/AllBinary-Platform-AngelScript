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
// package org.allbinary.graphics.displayable.event

class LastDisplayChangeEventHandler : BasicEventHandler
{
    

    LastDisplayChangeEventHandler@ jinit_LastDisplayChangeEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        DisplayChangeEventListener@ displayChangeEventListener = (cast<DisplayChangeEventListener>(eventListenerInterface));
        displayChangeEventListener.onDisplayChangeEvent(cast<DisplayChangeEvent>(eventObject));
    }
}

namespace LastDisplayChangeEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = LastDisplayChangeEventHandler().jinit_LastDisplayChangeEventHandler();
    }

    LastDisplayChangeEventHandler@ jcell_SINGLETON;
    LastDisplayChangeEventHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(LastDisplayChangeEventHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    LastDisplayChangeEventHandler@ getInstance()
    {
        return LastDisplayChangeEventHandler::SINGLETON;
    }
}

