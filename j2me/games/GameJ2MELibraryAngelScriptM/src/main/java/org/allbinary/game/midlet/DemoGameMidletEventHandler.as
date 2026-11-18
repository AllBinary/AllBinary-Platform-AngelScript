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
// package org.allbinary.game.midlet

class DemoGameMidletEventHandler : BasicEventHandler
{
    

    DemoGameMidletEventHandler@ jinit_DemoGameMidletEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        DemoGameMidletEventListener@ demoGameMidletEventListener = cast<DemoGameMidletEventListener>(eventListenerInterface);
        demoGameMidletEventListener.onDemoGameMidletEvent(cast<DemoGameMidletEvent>(eventObject));
    }
}

namespace DemoGameMidletEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameKeyEventHandler = DemoGameMidletEventHandler().jinit_DemoGameMidletEventHandler();
    }

    DemoGameMidletEventHandler@ jcell_gameKeyEventHandler;
    DemoGameMidletEventHandler@ get_gameKeyEventHandler() property { jclinit(); return jcell_gameKeyEventHandler; }
    void set_gameKeyEventHandler(DemoGameMidletEventHandler@ value) property { jclinit(); @jcell_gameKeyEventHandler = value; }
    

    DemoGameMidletEventHandler@ getInstance()
    {
        return DemoGameMidletEventHandler::gameKeyEventHandler;
    }
}

