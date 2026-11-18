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
    CommonStrings@ commonStrings;
    PressGameKeyEventHandler@ pressGameKeyEventHandler;
    UpGameKeyEventHandler@ upGameKeyEventHandler;
    DownGameKeyEventHandler@ downGameKeyEventHandler;

    // Java field initializers run after the super constructor
    void jfields_GameKeyEventHandler()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.pressGameKeyEventHandler = PressGameKeyEventHandler::getInstance();
    @this.upGameKeyEventHandler = UpGameKeyEventHandler::getInstance();
    @this.downGameKeyEventHandler = DownGameKeyEventHandler::getInstance();
    }

    GameKeyEventHandler@ jinit_GameKeyEventHandler()
    {
        this.jfields_GameKeyEventHandler();
        return this;
    }
    

    void removeAllListeners()
    {
        this.pressGameKeyEventHandler.removeAllListeners();
        this.upGameKeyEventHandler.removeAllListeners();
        this.downGameKeyEventHandler.removeAllListeners();
    }
    

    void addListenerForPlayer(EventListenerInterface@ eventListenerInterface, int playerInputId)
    {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
    }
    

    void addListener(EventListenerInterface@ eventListenerInterface)
    {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.REMOVE_LISTENER);
        this.pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
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

