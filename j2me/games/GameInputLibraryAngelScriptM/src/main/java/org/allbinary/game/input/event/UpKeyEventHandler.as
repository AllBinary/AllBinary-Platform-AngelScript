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
// package org.allbinary.game.input.event

class UpKeyEventHandler : UpKeyEventHandlerBase
{
    LocalPlayerInputIdFactory@ playerInputIdFactory_UpKeyEventHandler;

    // Java field initializers run after the super constructor
    void jfields_UpKeyEventHandler()
    {
    @this.playerInputIdFactory_UpKeyEventHandler = LocalPlayerInputIdFactory::getInstance();
    }
    

    UpKeyEventHandlerBase@ getInstanceForDevice(int deviceId)
    {
        int playerInputId = this.playerInputIdFactory_UpKeyEventHandler.getPlayerForDevice(deviceId);
        return UpKeyEventHandler::instanceArray[playerInputId];
    }
    

    UpKeyEventHandlerBase@ getInstanceForPlayer(int playerInputId)
    {
        return UpKeyEventHandler::instanceArray[playerInputId];
    }
    

    UpKeyEventHandler@ jinit_UpKeyEventHandler()
    {
        this.jinit_UpKeyEventHandlerBase();
        this.jfields_UpKeyEventHandler();
        return this;
    }
    

    void removeAllListeners()
    {
        UpKeyEventHandlerBase::removeAllListeners();
        for (int index = int(UpKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            UpKeyEventHandler::instanceArray[index].removeAllListeners();
        }
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        UpKeyEventHandlerBase::removeListenerSingleThreaded(eventListenerInterface);
        for (int index = int(UpKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            UpKeyEventHandler::instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        UpKeyEventHandlerBase::removeListener(eventListenerInterface);
        for (int index = int(UpKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            UpKeyEventHandler::instanceArray[index].removeListener(eventListenerInterface);
        }
    }
}

namespace UpKeyEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = UpKeyEventHandler().jinit_UpKeyEventHandler();
        @jcell_instanceArray = array<UpKeyEventHandlerBase@> = {UpKeyEventHandlerBase().jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase().jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase().jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase().jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase().jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase().jinit_UpKeyEventHandlerBase()};
    }

    UpKeyEventHandler@ jcell_instance;
    UpKeyEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(UpKeyEventHandler@ value) property { jclinit(); @jcell_instance = value; }

    UpKeyEventHandlerBase@[]@ jcell_instanceArray;
    UpKeyEventHandlerBase@[]@ get_instanceArray() property { jclinit(); return jcell_instanceArray; }
    void set_instanceArray(UpKeyEventHandlerBase@[]@ value) property { jclinit(); @jcell_instanceArray = value; }
    

    UpKeyEventHandler@ getInstance()
    {
        return UpKeyEventHandler::instance;
    }
}

