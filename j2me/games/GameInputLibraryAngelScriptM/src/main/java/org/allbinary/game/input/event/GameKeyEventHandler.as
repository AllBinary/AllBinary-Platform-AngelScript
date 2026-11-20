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

class GameKeyEventHandler : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_GameKeyEventHandler;
    PressGameKeyEventHandler@ pressGameKeyEventHandler_GameKeyEventHandler;
    UpGameKeyEventHandler@ upGameKeyEventHandler_GameKeyEventHandler;
    DownGameKeyEventHandler@ downGameKeyEventHandler_GameKeyEventHandler;

    // Java field initializers run after the super constructor
    void jfields_GameKeyEventHandler()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_GameKeyEventHandler = CommonStrings::getInstance();
    @this.pressGameKeyEventHandler_GameKeyEventHandler = PressGameKeyEventHandler::getInstance();
    @this.upGameKeyEventHandler_GameKeyEventHandler = UpGameKeyEventHandler::getInstance();
    @this.downGameKeyEventHandler_GameKeyEventHandler = DownGameKeyEventHandler::getInstance();
    }

    GameKeyEventHandler@ jinit_GameKeyEventHandler()
    {
        this.jfields_GameKeyEventHandler();
        return this;
    }
    

    void removeAllListeners()
    {
        this.pressGameKeyEventHandler_GameKeyEventHandler.removeAllListeners();
        this.upGameKeyEventHandler_GameKeyEventHandler.removeAllListeners();
        this.downGameKeyEventHandler_GameKeyEventHandler.removeAllListeners();
    }
    

    void addListenerForPlayer(EventListenerInterface@ eventListenerInterface, int playerInputId)
    {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings_GameKeyEventHandler.ADD_LISTENER);
        this.pressGameKeyEventHandler_GameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler_GameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler_GameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
    }
    

    void addListener(EventListenerInterface@ eventListenerInterface)
    {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings_GameKeyEventHandler.ADD_LISTENER);
        this.pressGameKeyEventHandler_GameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler_GameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler_GameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings_GameKeyEventHandler.REMOVE_LISTENER);
        this.pressGameKeyEventHandler_GameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler_GameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler_GameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
    }
}

namespace GameKeyEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameKeyEventHandler().jinit_GameKeyEventHandler();
    }

    GameKeyEventHandler@ jcell_instance;
    GameKeyEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameKeyEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    GameKeyEventHandler@ getInstance()
    {
        return GameKeyEventHandler::instance;
    }
}

