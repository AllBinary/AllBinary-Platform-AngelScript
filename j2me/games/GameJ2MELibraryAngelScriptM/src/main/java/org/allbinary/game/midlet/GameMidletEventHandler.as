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

class GameMidletEventHandler : BasicEventHandler
{
    

    GameMidletEventHandler@ jinit_GameMidletEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        GameMidletEventListener@ gameMidletEventListener = cast<GameMidletEventListener>(eventListenerInterface);
        gameMidletEventListener.onGameEnd(eventObject);
    }
}

namespace GameMidletEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameKeyEventHandler = GameMidletEventHandler().jinit_GameMidletEventHandler();
    }

    GameMidletEventHandler@ jcell_gameKeyEventHandler;
    GameMidletEventHandler@ get_gameKeyEventHandler() property { jclinit(); return jcell_gameKeyEventHandler; }
    void set_gameKeyEventHandler(GameMidletEventHandler@ value) property { jclinit(); @jcell_gameKeyEventHandler = value; }
    

    GameMidletEventHandler@ getInstance()
    {
        return GameMidletEventHandler::gameKeyEventHandler;
    }
}

