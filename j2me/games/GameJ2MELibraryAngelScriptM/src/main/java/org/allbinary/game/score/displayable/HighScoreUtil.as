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
// package org.allbinary.game.score.displayable

class HighScoreUtil : JObjectBase, HighScoresResultsListener
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_HighScoreUtil;
    HighScoresFactoryInterface@ highScoresFactoryInterface_HighScoreUtil;
    HighScores@[]@ highScoresArray_HighScoreUtil;
    HighScore@ highScore_HighScoreUtil;
    AbeClientInformationInterface@ abeClientInformation_HighScoreUtil;
    GameInfo@ gameInfo_HighScoreUtil;
    HighScoresHelperBaseInterface@ highScoresHelper_HighScoreUtil;
    bool firstTime_HighScoreUtil;

    // Java field initializers run after the super constructor
    void jfields_HighScoreUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_HighScoreUtil = CommonStrings::getInstance();
    
    
    
    
    
    
    this.firstTime_HighScoreUtil = true;
    }
    

    HighScoreUtil@ jinit_HighScoreUtil(HighScoresFactoryInterface@ highScoresFactoryInterface, HighScoresHelperBaseInterface@ highScoresHelper, AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo, CommandListener@ cmdListener, string name, HighScore@ highScore)
    {
        this.jfields_HighScoreUtil();
        @this.highScoresFactoryInterface_HighScoreUtil = highScoresFactoryInterface;
        @this.highScoresHelper_HighScoreUtil = highScoresHelper;
        @this.highScoresArray_HighScoreUtil = this.highScoresHelper_HighScoreUtil.getHighScoresArray();
        @this.highScore_HighScoreUtil = highScore;
        @this.abeClientInformation_HighScoreUtil = abeClientInformation;
        @this.gameInfo_HighScoreUtil = gameInfo;
        return this;
    }
    

    void setHighScoresArray(HighScores@[]@ highScoresArray)
    {
        @this.highScoresArray_HighScoreUtil = highScoresArray;
        this.firstTime_HighScoreUtil = false;
        this.saveHighScore();
    }
    

    void update(string name)
    {
        HighScoreNamePersistanceSingleton::getInstance().save(this.abeClientInformation_HighScoreUtil, this.gameInfo_HighScoreUtil, name);
        this.highScore_HighScoreUtil.setName(name);
    }
    

    void saveHighScore()
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings_HighScoreUtil.START).append(StringUtil::getInstance().toString(this.highScore_HighScoreUtil)).toString(), this, "saveHighScore");
        int size = int(this.highScoresArray_HighScoreUtil.length());
        if (this.firstTime_HighScoreUtil && size == 0) {
            this.logUtil.putF("Games canvas did not give us any HighScores", this, "saveHighScore");
            this.highScoresFactoryInterface_HighScoreUtil.fetchHighScores(this.gameInfo_HighScoreUtil, this);
            return;
        }
        HighScores@ highScores;
        string highScoresAsString = "";
        for (int index = 0; index < size; index++) {
            @highScores = this.highScoresArray_HighScoreUtil[index];
            highScores.addHighScore(this.highScore_HighScoreUtil);
            highScoresAsString = highScores.toString();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Added/Adding Score: ").append(highScoresAsString).toString(), this, "saveHighScore");
        }
        this.highScoresHelper_HighScoreUtil.setHighScoresArray(this.highScoresArray_HighScoreUtil);
    }
    

    void submit(MyCanvas@ myCanvas)
    {
        CommandListener@ commandListener = myCanvas.getCustomCommandListener();
        commandListener.commandAction(HighScoreUtil::SUBMIT_TEXTBOX_COMMAND, myCanvas);
    }
}

namespace HighScoreUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SUBMIT_TEXTBOX_COMMAND = Command().jinit_Command("Submit", StringUtil::getInstance().EMPTY_STRING, Command::SCREEN, 1);
    }

    Command@ jcell_SUBMIT_TEXTBOX_COMMAND;
    Command@ get_SUBMIT_TEXTBOX_COMMAND() property { jclinit(); return jcell_SUBMIT_TEXTBOX_COMMAND; }
    void set_SUBMIT_TEXTBOX_COMMAND(Command@ value) property { jclinit(); @jcell_SUBMIT_TEXTBOX_COMMAND = value; }
}

