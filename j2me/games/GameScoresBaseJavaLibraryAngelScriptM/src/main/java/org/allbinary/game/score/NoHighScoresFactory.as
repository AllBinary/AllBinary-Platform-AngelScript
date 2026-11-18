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

class NoHighScoresFactory : HighScoresBase
{
    LogUtil@ logUtil;
    HighScores@[]@ NO_HIGH_SCORES;

    // Java field initializers run after the super constructor
    void jfields_NoHighScoresFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.NO_HIGH_SCORES = array<HighScores@>(0);
    }
    

    NoHighScoresFactory@ jinit_NoHighScoresFactory()
    {
        this.jinit_HighScoresBase();
        this.jfields_NoHighScoresFactory();
        return this;
    }
    

    void fetchHighScores(GameInfo@ gameInfo, HighScoresResultsListener@ highScoresResultsListener)
    {
        this.logUtil.putF("Getting No HighScores", this, "fetchHighScores");
        highScoresResultsListener.setHighScoresArray(this.NO_HIGH_SCORES);
    }
    

    HighScoresHelperBaseInterface@ createHighScoresHelper()
    {
        return HighScoresHelperBase().jinit_HighScoresHelperBase();
    }
}

namespace NoHighScoresFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoHighScoresFactory().jinit_NoHighScoresFactory();
    }

    NoHighScoresFactory@ jcell_instance;
    NoHighScoresFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NoHighScoresFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    NoHighScoresFactory@ getInstance()
    {
        return NoHighScoresFactory::instance;
    }
}

