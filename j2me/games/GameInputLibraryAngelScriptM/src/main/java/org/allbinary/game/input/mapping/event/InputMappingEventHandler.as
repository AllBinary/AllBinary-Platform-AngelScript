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
// package org.allbinary.game.input.mapping.event

class InputMappingEventHandler : BasicEventHandler
{
    

    InputMappingEventHandler@ jinit_InputMappingEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        InputMappingEventListenerInterface@ inputMappingEventListenerInterface = cast<InputMappingEventListenerInterface>(eventListenerInterface);
        inputMappingEventListenerInterface.onInputMappingEvent(cast<InputMappingEvent>(eventObject));
    }
}

namespace InputMappingEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameKeyEventHandler = InputMappingEventHandler().jinit_InputMappingEventHandler();
    }

    InputMappingEventHandler@ jcell_gameKeyEventHandler;
    InputMappingEventHandler@ get_gameKeyEventHandler() property { jclinit(); return jcell_gameKeyEventHandler; }
    void set_gameKeyEventHandler(InputMappingEventHandler@ value) property { jclinit(); @jcell_gameKeyEventHandler = value; }
    

    InputMappingEventHandler@ getInstance()
    {
        return InputMappingEventHandler::gameKeyEventHandler;
    }
}

