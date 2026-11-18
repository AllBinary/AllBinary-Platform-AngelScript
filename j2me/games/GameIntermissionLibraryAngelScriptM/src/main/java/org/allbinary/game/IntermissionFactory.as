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
// package org.allbinary.game

class IntermissionFactory : JObjectBase
{
    GameState@ START_LEVEL_INTERMISSION_GAME_STATE;
    GameState@ WAIT_LEVEL_INTERMISSION_GAME_STATE;
    GameState@ SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE;
    GameState@ SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE;

    // Java field initializers run after the super constructor
    void jfields_IntermissionFactory()
    {
    @this.START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory::getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE");
    @this.WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory::getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE");
    @this.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory::getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE");
    @this.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory::getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE");
    }

    IntermissionFactory@ jinit_IntermissionFactory()
    {
        this.jfields_IntermissionFactory();
        return this;
    }
}

namespace IntermissionFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = IntermissionFactory().jinit_IntermissionFactory();
    }

    IntermissionFactory@ jcell_instance;
    IntermissionFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(IntermissionFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    IntermissionFactory@ getInstance()
    {
        return IntermissionFactory::instance;
    }
}

