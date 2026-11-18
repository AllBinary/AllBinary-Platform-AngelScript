// Generated Code Do Not Modify
// package org.allbinary.game.score

class BasicHighScoresFactory : HighScoresBase
{
    LogUtil@ logUtil;
    AbeClientInformationInterface@ abeClientInformation_BasicHighScoresFactory;
    HighScores@[]@ highScoresArray_BasicHighScoresFactory;
    string TOP_BasicHighScoresFactory;
    string SCORES_BasicHighScoresFactory;
    string PERSONAL_HIGH_SCORES_BasicHighScoresFactory;
    string FETCH_BasicHighScoresFactory;

    // Java field initializers run after the super constructor
    void jfields_BasicHighScoresFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    
    @this.highScoresArray_BasicHighScoresFactory = array<HighScores@>(1);
    this.TOP_BasicHighScoresFactory = "Top";
    this.SCORES_BasicHighScoresFactory = "Scores";
    this.PERSONAL_HIGH_SCORES_BasicHighScoresFactory = "Personal Top Scores";
    this.FETCH_BasicHighScoresFactory = "fetchHighScores";
    }
    

    BasicHighScoresFactory@ jinit_BasicHighScoresFactory(AbeClientInformationInterface@ abeClientInformation, SoftwareInformation@ softwareInformation)
    {
        this.jinit_HighScoresBase();
        this.jfields_BasicHighScoresFactory();
        @this.abeClientInformation_BasicHighScoresFactory = abeClientInformation;
        return this;
    }
    

    void fetchHighScores(GameInfo@ gameInfo, HighScoresResultsListener@ highScoresResultsListener)
    {
        this.logUtil.putF("Getting Local HighScores", this, this.FETCH_BasicHighScoresFactory);
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true);
    }
    

    void fetchHighScoresPreload(GameInfo@ gameInfo, HighScoresResultsListener@ highScoresResultsListener, bool preload)
    {
        try {
            @this.highScoresArray_BasicHighScoresFactory[0] = RecordStoreHighScores::getInstance(this.abeClientInformation_BasicHighScoresFactory, gameInfo, this.TOP_BasicHighScoresFactory, this.PERSONAL_HIGH_SCORES_BasicHighScoresFactory, this.SCORES_BasicHighScoresFactory, ScoreComparator().jinit_ScoreComparator(true));
            highScoresResultsListener.setHighScoresArray(this.highScoresArray_BasicHighScoresFactory);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.FETCH_BasicHighScoresFactory, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    HighScoresHelperBaseInterface@ createHighScoresHelper()
    {
        return HighScoresHelper2().jinit_HighScoresHelper2();
    }
}

namespace BasicHighScoresFactory
{
    

    bool loaded(int index2)
    {
        if (index2 >= 0) {
            return true;
        }
        return false;
    }
}

