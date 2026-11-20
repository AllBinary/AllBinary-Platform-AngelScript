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
// package org.allbinary.game.configuration

class GameConfigurationSingleton : JObjectBase
{
    BasicArrayList@ list_GameConfigurationSingleton;
    ABHashtable@ hashtable_GameConfigurationSingleton;
    

    GameConfigurationSingleton@ jinit_GameConfigurationSingleton()
    {
        @this.list_GameConfigurationSingleton = BasicArrayListD().jinit_BasicArrayListD();
        @this.hashtable_GameConfigurationSingleton = StdUtil::getInstance().createHashtable();
        return this;
    }
    

    GameConfiguration@ getInstanceByName(string name)
    {
        return cast<GameConfiguration>(this.hashtable_GameConfigurationSingleton.get(name));
    }
    

    BasicArrayList@ getOptionsBasicArrayList()
    {
        return this.list_GameConfigurationSingleton;
    }
    

    void add(GameConfiguration@ gameConfiguration)
    {
        this.list_GameConfigurationSingleton.add(gameConfiguration);
    }
    

    ABHashtable@ getHashtable()
    {
        return this.hashtable_GameConfigurationSingleton;
    }
}

namespace GameConfigurationSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = GameConfigurationSingleton().jinit_GameConfigurationSingleton();
    }

    GameConfigurationSingleton@ jcell_SINGLETON;
    GameConfigurationSingleton@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(GameConfigurationSingleton@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    GameConfigurationSingleton@ getInstance()
    {
        return GameConfigurationSingleton::SINGLETON;
    }
}

