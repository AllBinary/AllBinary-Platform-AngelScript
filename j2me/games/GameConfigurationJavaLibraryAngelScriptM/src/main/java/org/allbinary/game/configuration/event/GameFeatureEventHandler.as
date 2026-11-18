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

class GameFeatureEventHandler : BasicEventHandler
{
    

    GameFeatureEventHandler@ jinit_GameFeatureEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        GameFeatureListenerInterface@ gameFeatureListenerInterface = (cast<GameFeatureListenerInterface>(eventListenerInterface));
        gameFeatureListenerInterface.onGameFeatureChange(cast<GameFeatureEvent>(eventObject));
    }
}

namespace GameFeatureEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_gameKeyEventHandler = GameFeatureEventHandler().jinit_GameFeatureEventHandler();
    }

    GameFeatureEventHandler@ jcell_gameKeyEventHandler;
    GameFeatureEventHandler@ get_gameKeyEventHandler() property { jclinit(); return jcell_gameKeyEventHandler; }
    void set_gameKeyEventHandler(GameFeatureEventHandler@ value) property { jclinit(); @jcell_gameKeyEventHandler = value; }
    

    GameFeatureEventHandler@ getInstance()
    {
        return GameFeatureEventHandler::gameKeyEventHandler;
    }
}

