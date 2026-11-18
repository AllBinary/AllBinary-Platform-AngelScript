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

class GamePersistanceSingleton : KeyValuePersistance
{
    

    GamePersistanceSingleton@ jinit_GamePersistanceSingleton()
    {
        this.jinit_KeyValuePersistance(GamePersistanceStrings::getInstance().SAVED_GAME_RECORD_ID);
        return this;
    }
}

namespace GamePersistanceSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_GAME_PERSISTANCE = GamePersistanceSingleton().jinit_GamePersistanceSingleton();
    }

    GamePersistanceSingleton@ jcell_GAME_PERSISTANCE;
    GamePersistanceSingleton@ get_GAME_PERSISTANCE() property { jclinit(); return jcell_GAME_PERSISTANCE; }
    void set_GAME_PERSISTANCE(GamePersistanceSingleton@ value) property { jclinit(); @jcell_GAME_PERSISTANCE = value; }
    

    GamePersistanceSingleton@ getInstance()
    {
        return GamePersistanceSingleton::GAME_PERSISTANCE;
    }
}

