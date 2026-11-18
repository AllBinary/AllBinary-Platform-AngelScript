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
// package org.allbinary.game.configuration.event

class GameInitializedEventHandler : BasicEventHandler
{
    

    GameInitializedEventHandler@ jinit_GameInitializedEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        GameInitializedListenerInterface@ gameInitializedListenerInterface = (cast<GameInitializedListenerInterface>(eventListenerInterface));
        gameInitializedListenerInterface.onGameInitialized(cast<GameInitializedEvent>(eventObject));
    }
}

namespace GameInitializedEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameKeyEventHandler = GameInitializedEventHandler().jinit_GameInitializedEventHandler();
    }

    GameInitializedEventHandler@ jcell_gameKeyEventHandler;
    GameInitializedEventHandler@ get_gameKeyEventHandler() property { jclinit(); return jcell_gameKeyEventHandler; }
    void set_gameKeyEventHandler(GameInitializedEventHandler@ value) property { jclinit(); @jcell_gameKeyEventHandler = value; }
    

    GameInitializedEventHandler@ getInstance()
    {
        return GameInitializedEventHandler::gameKeyEventHandler;
    }
}

