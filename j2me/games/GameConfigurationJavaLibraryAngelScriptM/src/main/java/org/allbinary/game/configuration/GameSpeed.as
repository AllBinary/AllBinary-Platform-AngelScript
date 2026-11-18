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

class GameSpeed : JObjectBase
{

    GameSpeed@ jinit_GameSpeed()
    {
        return this;
    }
    

    int getSpeed()
    {
        GameConfiguration@ speedGameConfiguration = GameConfigurationCentral::getInstance().SPEED;
        return (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue() + 1);
    }
    

    int getDelay()
    {
        GameConfiguration@ speedGameConfiguration = GameConfigurationCentral::getInstance().SPEED;
        return 19 * (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue());
    }
}

namespace GameSpeed
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameSpeed().jinit_GameSpeed();
    }

    GameSpeed@ jcell_instance;
    GameSpeed@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameSpeed@ value) property { jclinit(); @jcell_instance = value; }
    

    GameSpeed@ getInstance()
    {
        return GameSpeed::instance;
    }
}

