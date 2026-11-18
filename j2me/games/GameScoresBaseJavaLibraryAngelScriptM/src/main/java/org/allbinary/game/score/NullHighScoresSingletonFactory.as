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
// package org.allbinary.game.score

class NullHighScoresSingletonFactory : JObjectBase
{

    NullHighScoresSingletonFactory@ jinit_NullHighScoresSingletonFactory()
    {
        return this;
    }
}

namespace NullHighScoresSingletonFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = HighScores().jinit_HighScores(CommonStrings::getInstance().LOADING, "High Scores Not Loaded", CommonStrings::getInstance().PERIODS);
    }

    HighScores@ jcell_SINGLETON;
    HighScores@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(HighScores@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    HighScores@ getInstance()
    {
        return NullHighScoresSingletonFactory::SINGLETON;
    }
}

