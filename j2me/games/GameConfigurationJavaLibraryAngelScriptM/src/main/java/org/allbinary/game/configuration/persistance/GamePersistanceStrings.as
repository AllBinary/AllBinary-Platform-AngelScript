/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.configuration.persistance

class GamePersistanceStrings : JObjectBase
{
    string SAVED_GAME_RECORD_ID;
    string SAVED_GAME_CONFIGURATION_RECORD_ID;
    string DEFAULT_INPUT_MAPPING_RECORD_ID;
    string SAVED_INPUT_CONFIGURATION_RECORD_ID;

    // Java field initializers run after the super constructor
    void jfields_GamePersistanceStrings()
    {
    this.SAVED_GAME_RECORD_ID = "_SG";
    this.SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC";
    this.DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM";
    this.SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC";
    }

    GamePersistanceStrings@ jinit_GamePersistanceStrings()
    {
        this.jfields_GamePersistanceStrings();
        return this;
    }
}

namespace GamePersistanceStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GamePersistanceStrings().jinit_GamePersistanceStrings();
    }

    GamePersistanceStrings@ jcell_instance;
    GamePersistanceStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GamePersistanceStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    GamePersistanceStrings@ getInstance()
    {
        return GamePersistanceStrings::instance;
    }
}

