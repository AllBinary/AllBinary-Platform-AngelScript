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
// package org.allbinary.game.configuration.persistance

class GameConfigurationPersistanceSingleton : KeyValuePersistance
{
    

    GameConfigurationPersistanceSingleton@ jinit_GameConfigurationPersistanceSingleton()
    {
        this.jinit_KeyValuePersistance(GamePersistanceStrings::getInstance().SAVED_GAME_CONFIGURATION_RECORD_ID);
        return this;
    }
}

namespace GameConfigurationPersistanceSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_GAME_PERSISTANCE = GameConfigurationPersistanceSingleton().jinit_GameConfigurationPersistanceSingleton();
    }

    GameConfigurationPersistanceSingleton@ jcell_GAME_PERSISTANCE;
    GameConfigurationPersistanceSingleton@ get_GAME_PERSISTANCE() property { jclinit(); return jcell_GAME_PERSISTANCE; }
    void set_GAME_PERSISTANCE(GameConfigurationPersistanceSingleton@ value) property { jclinit(); @jcell_GAME_PERSISTANCE = value; }
    

    GameConfigurationPersistanceSingleton@ getInstance()
    {
        return GameConfigurationPersistanceSingleton::GAME_PERSISTANCE;
    }
}

