/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class NullEventListener : JObjectBase, EventListenerInterface
{

    NullEventListener@ jinit_NullEventListener()
    {
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
    }
}

namespace NullEventListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_EVENT_LISTENER = NullEventListener().jinit_NullEventListener();
    }

    NullEventListener@ jcell_NULL_EVENT_LISTENER;
    NullEventListener@ get_NULL_EVENT_LISTENER() property { jclinit(); return jcell_NULL_EVENT_LISTENER; }
    void set_NULL_EVENT_LISTENER(NullEventListener@ value) property { jclinit(); @jcell_NULL_EVENT_LISTENER = value; }
}

