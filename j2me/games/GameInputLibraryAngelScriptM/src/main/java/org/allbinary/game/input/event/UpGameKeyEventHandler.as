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

class UpGameKeyEventHandler : UpGameKeyEventHandlerBase
{
    LocalPlayerInputIdFactory@ playerInputIdFactory_UpGameKeyEventHandler;

    // Java field initializers run after the super constructor
    void jfields_UpGameKeyEventHandler()
    {
    @this.playerInputIdFactory_UpGameKeyEventHandler = LocalPlayerInputIdFactory::getInstance();
    }
    

    UpGameKeyEventHandlerBase@ getInstanceForDevice(int deviceId)
    {
        int playerInputId = this.playerInputIdFactory_UpGameKeyEventHandler.getPlayerForDevice(deviceId);
        return UpGameKeyEventHandler::instanceArray[playerInputId];
    }
    

    UpGameKeyEventHandlerBase@ getInstanceForPlayer(int playerInputId)
    {
        return UpGameKeyEventHandler::instanceArray[playerInputId];
    }
    

    UpGameKeyEventHandler@ jinit_UpGameKeyEventHandler()
    {
        this.jinit_UpGameKeyEventHandlerBase();
        this.jfields_UpGameKeyEventHandler();
        return this;
    }
    

    void removeAllListeners()
    {
        UpGameKeyEventHandlerBase::removeAllListeners();
        for (int index = int(UpGameKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            UpGameKeyEventHandler::instanceArray[index].removeAllListeners();
        }
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        UpGameKeyEventHandlerBase::removeListenerSingleThreaded(eventListenerInterface);
        for (int index = int(UpGameKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            UpGameKeyEventHandler::instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        UpGameKeyEventHandlerBase::removeListener(eventListenerInterface);
        for (int index = int(UpGameKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            UpGameKeyEventHandler::instanceArray[index].removeListener(eventListenerInterface);
        }
    }
}

namespace UpGameKeyEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = UpGameKeyEventHandler().jinit_UpGameKeyEventHandler();
        @jcell_instanceArray = array<UpGameKeyEventHandlerBase@> = {UpGameKeyEventHandlerBase().jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase().jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase().jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase().jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase().jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase().jinit_UpGameKeyEventHandlerBase()};
    }

    UpGameKeyEventHandler@ jcell_instance;
    UpGameKeyEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(UpGameKeyEventHandler@ value) property { jclinit(); @jcell_instance = value; }

    UpGameKeyEventHandlerBase@[]@ jcell_instanceArray;
    UpGameKeyEventHandlerBase@[]@ get_instanceArray() property { jclinit(); return jcell_instanceArray; }
    void set_instanceArray(UpGameKeyEventHandlerBase@[]@ value) property { jclinit(); @jcell_instanceArray = value; }
    

    UpGameKeyEventHandler@ getInstance()
    {
        return UpGameKeyEventHandler::instance;
    }
}

