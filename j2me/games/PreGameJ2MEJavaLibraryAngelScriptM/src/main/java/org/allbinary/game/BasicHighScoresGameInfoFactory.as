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

class BasicHighScoresGameInfoFactory : JObjectBase
{
    GameInfo@ MULTI_PLAYER_SERVER;
    GameInfo@ SINGLE_PLAYER_SERVER;

    // Java field initializers run after the super constructor
    void jfields_BasicHighScoresGameInfoFactory()
    {
    @this.MULTI_PLAYER_SERVER = GameInfo().jinit_GameInfo(GameTypeFactory::getInstance().MULTI_PLAYER, GameMode::SERVER, PlayerTypesFactory::getInstance().PLAYER_TYPE_ONE, 0, 0);
    @this.SINGLE_PLAYER_SERVER = GameInfo().jinit_GameInfo(GameTypeFactory::getInstance().SINGLE_PLAYER, GameMode::SERVER, PlayerTypesFactory::getInstance().PLAYER_TYPE_ONE, 0, 0);
    }

    BasicHighScoresGameInfoFactory@ jinit_BasicHighScoresGameInfoFactory()
    {
        this.jfields_BasicHighScoresGameInfoFactory();
        return this;
    }
}

namespace BasicHighScoresGameInfoFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = BasicHighScoresGameInfoFactory().jinit_BasicHighScoresGameInfoFactory();
    }

    BasicHighScoresGameInfoFactory@ jcell_SINGLETON;
    BasicHighScoresGameInfoFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(BasicHighScoresGameInfoFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    BasicHighScoresGameInfoFactory@ getInstance()
    {
        return BasicHighScoresGameInfoFactory::SINGLETON;
    }
}

