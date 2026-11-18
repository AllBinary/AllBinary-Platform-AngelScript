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

class DownGameKeyEventHandler : DownGameKeyEventHandlerBase
{
    LocalPlayerInputIdFactory@ playerInputIdFactory_DownGameKeyEventHandler;

    // Java field initializers run after the super constructor
    void jfields_DownGameKeyEventHandler()
    {
    @this.playerInputIdFactory_DownGameKeyEventHandler = LocalPlayerInputIdFactory::getInstance();
    }
    

    DownGameKeyEventHandlerBase@ getInstanceForDevice(int deviceId)
    {
        int playerInputId = this.playerInputIdFactory_DownGameKeyEventHandler.getPlayerForDevice(deviceId);
        return DownGameKeyEventHandler::instanceArray[playerInputId];
    }
    

    DownGameKeyEventHandlerBase@ getInstanceForPlayer(int playerInputId)
    {
        return DownGameKeyEventHandler::instanceArray[playerInputId];
    }
    

    DownGameKeyEventHandler@ jinit_DownGameKeyEventHandler()
    {
        this.jinit_DownGameKeyEventHandlerBase();
        this.jfields_DownGameKeyEventHandler();
        return this;
    }
    

    void removeAllListeners()
    {
        DownGameKeyEventHandlerBase::removeAllListeners();
        for (int index = int(DownGameKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            DownGameKeyEventHandler::instanceArray[index].removeAllListeners();
        }
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        DownGameKeyEventHandlerBase::removeListenerSingleThreaded(eventListenerInterface);
        for (int index = int(DownGameKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            DownGameKeyEventHandler::instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        DownGameKeyEventHandlerBase::removeListener(eventListenerInterface);
        for (int index = int(DownGameKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            DownGameKeyEventHandler::instanceArray[index].removeListener(eventListenerInterface);
        }
    }
}

namespace DownGameKeyEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DownGameKeyEventHandler().jinit_DownGameKeyEventHandler();
        @jcell_instanceArray = array<DownGameKeyEventHandlerBase@> = {DownGameKeyEventHandlerBase().jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase().jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase().jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase().jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase().jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase().jinit_DownGameKeyEventHandlerBase()};
    }

    DownGameKeyEventHandler@ jcell_instance;
    DownGameKeyEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DownGameKeyEventHandler@ value) property { jclinit(); @jcell_instance = value; }

    DownGameKeyEventHandlerBase@[]@ jcell_instanceArray;
    DownGameKeyEventHandlerBase@[]@ get_instanceArray() property { jclinit(); return jcell_instanceArray; }
    void set_instanceArray(DownGameKeyEventHandlerBase@[]@ value) property { jclinit(); @jcell_instanceArray = value; }
    

    DownGameKeyEventHandler@ getInstance()
    {
        return DownGameKeyEventHandler::instance;
    }
}

