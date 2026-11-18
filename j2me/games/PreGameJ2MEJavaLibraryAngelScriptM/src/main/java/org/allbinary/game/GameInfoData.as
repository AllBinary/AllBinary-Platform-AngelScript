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

class GameInfoData : JObjectBase
{
    string GAME_TYPE;
    string GAME_MODE;
    string PLAYER_TYPE;
    string HIGHEST_LEVEL;
    string CURRENT_LEVEL;
    string SOFTWARE_INFORMATION;

    // Java field initializers run after the super constructor
    void jfields_GameInfoData()
    {
    this.GAME_TYPE = "GAME_TYPE";
    this.GAME_MODE = "GAME_MODE";
    this.PLAYER_TYPE = "PLAYER_TYPE";
    this.HIGHEST_LEVEL = "HIGHEST_LEVEL";
    this.CURRENT_LEVEL = "CURRENT_LEVEL";
    this.SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION";
    }
    

    GameInfoData@ jinit_GameInfoData()
    {
        this.jfields_GameInfoData();
        return this;
    }
}

namespace GameInfoData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameInfoData().jinit_GameInfoData();
    }

    GameInfoData@ jcell_instance;
    GameInfoData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameInfoData@ value) property { jclinit(); @jcell_instance = value; }
    

    GameInfoData@ getInstance()
    {
        return GameInfoData::instance;
    }
}

