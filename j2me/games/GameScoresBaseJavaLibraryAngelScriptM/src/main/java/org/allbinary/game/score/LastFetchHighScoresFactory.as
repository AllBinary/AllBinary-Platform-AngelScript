/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class LastFetchHighScoresFactory : JObjectBase
{
    HighScores@[]@ highScoresArray;

    // Java field initializers run after the super constructor
    void jfields_LastFetchHighScoresFactory()
    {
    @this.highScoresArray = NoHighScoresFactory::getInstance().NO_HIGH_SCORES;
    }

    LastFetchHighScoresFactory@ jinit_LastFetchHighScoresFactory()
    {
        this.jfields_LastFetchHighScoresFactory();
        return this;
    }
}

namespace LastFetchHighScoresFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    LastFetchHighScoresFactory@ getInstance()
    {
        if (LastFetchHighScoresFactory::instance is NullUtil::getInstance().NULL_OBJECT) {
            @LastFetchHighScoresFactory::instance = LastFetchHighScoresFactory().jinit_LastFetchHighScoresFactory();
        }
        return cast<LastFetchHighScoresFactory>(LastFetchHighScoresFactory::instance);
    }
}

