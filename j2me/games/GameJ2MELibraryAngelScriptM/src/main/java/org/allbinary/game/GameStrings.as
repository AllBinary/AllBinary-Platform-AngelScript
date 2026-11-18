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

class GameStrings : JObjectBase
{
    string PROCESS_TICK;
    string ON_GAME_INITIALIZED;
    string UPDATESURFACE;
    string ON_SET_DISPLAYABLE;
    string UNPAUSE;
    string TOGGLE_MENU;
    string SET_GAME_OVER;
    string GAME_STATE;
    string SET_GAME_STATE;
    string STOP_GAME_CANVAS_RUNNABLE_INTERFACE;

    // Java field initializers run after the super constructor
    void jfields_GameStrings()
    {
    this.PROCESS_TICK = "processTick";
    this.ON_GAME_INITIALIZED = "onGameInitialized";
    this.UPDATESURFACE = "updateSurface";
    this.ON_SET_DISPLAYABLE = "onSetDisplayable";
    this.UNPAUSE = "unPause";
    this.TOGGLE_MENU = "toggleMenu";
    this.SET_GAME_OVER = "setGameOver";
    this.GAME_STATE = "Game State: ";
    this.SET_GAME_STATE = "setGameState";
    this.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface";
    }

    GameStrings@ jinit_GameStrings()
    {
        this.jfields_GameStrings();
        return this;
    }
}

namespace GameStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameStrings().jinit_GameStrings();
    }

    GameStrings@ jcell_instance;
    GameStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    GameStrings@ getInstance()
    {
        return GameStrings::instance;
    }
}

