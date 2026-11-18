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
    CommonStrings@ commonStrings;
    HighScoresFactoryInterface@ highScoresFactoryInterface;
    HighScores@[]@ highScoresArray;
    HighScore@ highScore;
    AbeClientInformationInterface@ abeClientInformation;
    GameInfo@ gameInfo;
    HighScoresHelperBaseInterface@ highScoresHelper;
    bool firstTime;

    // Java field initializers run after the super constructor
    void jfields_HighScoreUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    
    
    
    
    this.firstTime = true;
    }
    

    HighScoreUtil@ jinit_HighScoreUtil(HighScoresFactoryInterface@ highScoresFactoryInterface, HighScoresHelperBaseInterface@ highScoresHelper, AbeClientInformationInterface@ abeClientInformation, GameInfo@ gameInfo, CommandListener@ cmdListener, string name, HighScore@ highScore)
    {
        this.jfields_HighScoreUtil();
        @this.highScoresFactoryInterface = highScoresFactoryInterface;
        @this.highScoresHelper = highScoresHelper;
        @this.highScoresArray = this.highScoresHelper.getHighScoresArray();
        @this.highScore = highScore;
        @this.abeClientInformation = abeClientInformation;
        @this.gameInfo = gameInfo;
        return this;
    }
    

    void setHighScoresArray(HighScores@[]@ highScoresArray)
    {
        @this.highScoresArray = highScoresArray;
        this.firstTime = false;
        this.saveHighScore();
    }
    

    void update(string name)
    {
        HighScoreNamePersistanceSingleton::getInstance().save(this.abeClientInformation, this.gameInfo, name);
        this.highScore.setName(name);
    }
    

    void saveHighScore()
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.commonStrings.START).append(StringUtil::getInstance().toString(this.highScore)).toString(), this, "saveHighScore");
        int size = int(this.highScoresArray.length());
        if (this.firstTime && size == 0) {
            this.logUtil.putF("Games canvas did not give us any HighScores", this, "saveHighScore");
            this.highScoresFactoryInterface.fetchHighScores(this.gameInfo, this);
            return;
        }
        HighScores@ highScores;
        string highScoresAsString = "";
        for (int index = 0; index < size; index++) {
            @highScores = this.highScoresArray[index];
            highScores.addHighScore(this.highScore);
            highScoresAsString = highScores.toString();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Added/Adding Score: ").append(highScoresAsString).toString(), this, "saveHighScore");
        }
        this.highScoresHelper.setHighScoresArray(this.highScoresArray);
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

