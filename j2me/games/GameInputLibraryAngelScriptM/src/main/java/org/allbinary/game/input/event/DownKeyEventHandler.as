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

class DownKeyEventHandler : DownKeyEventHandlerBase
{
    LocalPlayerInputIdFactory@ playerInputIdFactory_DownKeyEventHandler;

    // Java field initializers run after the super constructor
    void jfields_DownKeyEventHandler()
    {
    @this.playerInputIdFactory_DownKeyEventHandler = LocalPlayerInputIdFactory::getInstance();
    }
    

    DownKeyEventHandlerBase@ getInstanceForDevice(int deviceId)
    {
        int playerInputId = this.playerInputIdFactory_DownKeyEventHandler.getPlayerForDevice(deviceId);
        return DownKeyEventHandler::instanceArray[playerInputId];
    }
    

    DownKeyEventHandlerBase@ getInstanceForPlayer(int playerInputId)
    {
        return DownKeyEventHandler::instanceArray[playerInputId];
    }
    

    DownKeyEventHandler@ jinit_DownKeyEventHandler()
    {
        this.jinit_DownKeyEventHandlerBase();
        this.jfields_DownKeyEventHandler();
        return this;
    }
    

    void removeAllListeners()
    {
        DownKeyEventHandlerBase::removeAllListeners();
        for (int index = int(DownKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            DownKeyEventHandler::instanceArray[index].removeAllListeners();
        }
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        DownKeyEventHandlerBase::removeListenerSingleThreaded(eventListenerInterface);
        for (int index = int(DownKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            DownKeyEventHandler::instanceArray[index].removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        DownKeyEventHandlerBase::removeListener(eventListenerInterface);
        for (int index = int(DownKeyEventHandler::instanceArray.length()) - 1; index >= 0; index--) {
            DownKeyEventHandler::instanceArray[index].removeListener(eventListenerInterface);
        }
    }
}

namespace DownKeyEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DownKeyEventHandler().jinit_DownKeyEventHandler();
        @jcell_instanceArray = array<DownKeyEventHandlerBase@> = {DownKeyEventHandlerBase().jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase().jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase().jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase().jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase().jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase().jinit_DownKeyEventHandlerBase()};
    }

    DownKeyEventHandler@ jcell_instance;
    DownKeyEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DownKeyEventHandler@ value) property { jclinit(); @jcell_instance = value; }

    DownKeyEventHandlerBase@[]@ jcell_instanceArray;
    DownKeyEventHandlerBase@[]@ get_instanceArray() property { jclinit(); return jcell_instanceArray; }
    void set_instanceArray(DownKeyEventHandlerBase@[]@ value) property { jclinit(); @jcell_instanceArray = value; }
    

    DownKeyEventHandler@ getInstance()
    {
        return DownKeyEventHandler::instance;
    }
}

