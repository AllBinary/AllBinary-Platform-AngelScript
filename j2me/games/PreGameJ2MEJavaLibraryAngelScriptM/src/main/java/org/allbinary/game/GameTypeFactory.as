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

class GameTypeFactory : JObjectBase
{
    GameType@[]@ NULL_GAME_TYPE_ARRAY;
    GameType@ NONE;
    GameType@ SINGLE_PLAYER;
    GameType@ MULTI_PLAYER;
    GameType@ BOT;

    // Java field initializers run after the super constructor
    void jfields_GameTypeFactory()
    {
    @this.NULL_GAME_TYPE_ARRAY = array<GameType@>(0);
    @this.NONE = GameType().jinit_GameType(StringUtil::getInstance().NULL_STRING);
    @this.SINGLE_PLAYER = GameType().jinit_GameType("Single Player");
    @this.MULTI_PLAYER = GameType().jinit_GameType("Multi Player");
    @this.BOT = GameType().jinit_GameType("Artificial Player");
    }

    GameTypeFactory@ jinit_GameTypeFactory()
    {
        this.jfields_GameTypeFactory();
        return this;
    }
}

namespace GameTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameTypeFactory().jinit_GameTypeFactory();
    }

    GameTypeFactory@ jcell_instance;
    GameTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameTypeFactory@ getInstance()
    {
        return GameTypeFactory::instance;
    }
}

