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
// package org.allbinary.game.input.mapping.event

class NullInputMappingEventListener : JObjectBase, InputMappingEventListenerInterface
{

    NullInputMappingEventListener@ jinit_NullInputMappingEventListener()
    {
        return this;
    }
    

    void onInputMappingEvent(InputMappingEvent@ inputMappingEvent)
    {
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
    }
}

namespace NullInputMappingEventListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_INPUT_MAPPING_EVENT_LISTENER = NullInputMappingEventListener().jinit_NullInputMappingEventListener();
    }

    NullInputMappingEventListener@ jcell_NULL_INPUT_MAPPING_EVENT_LISTENER;
    NullInputMappingEventListener@ get_NULL_INPUT_MAPPING_EVENT_LISTENER() property { jclinit(); return jcell_NULL_INPUT_MAPPING_EVENT_LISTENER; }
    void set_NULL_INPUT_MAPPING_EVENT_LISTENER(NullInputMappingEventListener@ value) property { jclinit(); @jcell_NULL_INPUT_MAPPING_EVENT_LISTENER = value; }
}

