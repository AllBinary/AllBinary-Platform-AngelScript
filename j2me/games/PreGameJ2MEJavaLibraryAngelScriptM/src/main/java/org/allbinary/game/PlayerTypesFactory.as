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

class PlayerTypesFactory : JObjectBase
{
    PlayerType@ PLAYER_TYPE_ONE;
    PlayerType@ PLAYER_TYPE_TWO;
    PlayerType@ PLAYER_TYPE_THREE;

    // Java field initializers run after the super constructor
    void jfields_PlayerTypesFactory()
    {
    @this.PLAYER_TYPE_ONE = PlayerType().jinit_PlayerType("Player Type One", 0);
    @this.PLAYER_TYPE_TWO = PlayerType().jinit_PlayerType("Player Type Two", 1);
    @this.PLAYER_TYPE_THREE = PlayerType().jinit_PlayerType("Player Type Three", 2);
    }

    PlayerTypesFactory@ jinit_PlayerTypesFactory()
    {
        this.jfields_PlayerTypesFactory();
        return this;
    }
}

namespace PlayerTypesFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = PlayerTypesFactory().jinit_PlayerTypesFactory();
    }

    PlayerTypesFactory@ jcell_SINGLETON;
    PlayerTypesFactory@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(PlayerTypesFactory@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    PlayerTypesFactory@ getInstance()
    {
        return PlayerTypesFactory::SINGLETON;
    }
}

