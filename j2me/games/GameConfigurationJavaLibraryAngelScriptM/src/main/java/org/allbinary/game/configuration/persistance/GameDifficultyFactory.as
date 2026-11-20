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

class GameDifficultyFactory : JObjectBase
{
    int level_GameDifficultyFactory;

    // Java field initializers run after the super constructor
    void jfields_GameDifficultyFactory()
    {
    this.level_GameDifficultyFactory = 0;
    }

    GameDifficultyFactory@ jinit_GameDifficultyFactory()
    {
        this.jfields_GameDifficultyFactory();
        return this;
    }
    

    void setLevel(int level)
    {
        this.level_GameDifficultyFactory = level;
    }
    

    int getLevel()
    {
        return this.level_GameDifficultyFactory;
    }
}

namespace GameDifficultyFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameDifficultyFactory().jinit_GameDifficultyFactory();
    }

    GameDifficultyFactory@ jcell_instance;
    GameDifficultyFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameDifficultyFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameDifficultyFactory@ getInstance()
    {
        return GameDifficultyFactory::instance;
    }
}

