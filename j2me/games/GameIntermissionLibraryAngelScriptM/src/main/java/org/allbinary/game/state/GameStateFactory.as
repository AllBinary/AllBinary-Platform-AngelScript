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
// package org.allbinary.game.state

class GameStateFactory : JObjectBase
{
    int index;
    GameState@ NO_GAME_STATE;
    GameState@ PLAYING_GAME_STATE;
    GameState@ SHOW_END_RESULT_GAME_STATE;
    GameState@ SHOW_HIGH_SCORE_GAME_STATE;

    // Java field initializers run after the super constructor
    void jfields_GameStateFactory()
    {
    this.index = 0;
    @this.NO_GAME_STATE = this.createGameState("NO_GAME_STATE");
    @this.PLAYING_GAME_STATE = this.createGameState("PLAYING_GAME_STATE");
    @this.SHOW_END_RESULT_GAME_STATE = this.createGameState("SHOW_END_RESULT_GAME_STATE");
    @this.SHOW_HIGH_SCORE_GAME_STATE = this.createGameState("SHOW_HIGH_SCORE_GAME_STATE");
    }
    

    GameStateFactory@ jinit_GameStateFactory()
    {
        this.jfields_GameStateFactory();
        return this;
    }
    

    GameState@ createGameState(string name)
    {
        return GameState().jinit_GameState(name, this.index++);
    }
}

namespace GameStateFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    GameStateFactory@ getInstance()
    {
        if (GameStateFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @GameStateFactory::instance = GameStateFactory().jinit_GameStateFactory();
        }
        return cast<GameStateFactory>(GameStateFactory::instance);
    }
}

