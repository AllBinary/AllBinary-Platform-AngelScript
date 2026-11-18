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
// package org.allbinary.bounds.event

class BoundsChangeEventHandler : BasicEventHandler
{
    

    BoundsChangeEventHandler@ jinit_BoundsChangeEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        BoundsChangeEventListener@ boundsChangeEventListener = cast<BoundsChangeEventListener>(eventListenerInterface);
        boundsChangeEventListener.onBoundsChangeEvent(cast<BoundsChangeEvent>(eventObject));
    }
}

namespace BoundsChangeEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = BoundsChangeEventHandler().jinit_BoundsChangeEventHandler();
    }

    BasicEventHandler@ jcell_SINGLETON;
    BasicEventHandler@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(BasicEventHandler@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    BasicEventHandler@ getInstance()
    {
        return BoundsChangeEventHandler::SINGLETON;
    }
}

