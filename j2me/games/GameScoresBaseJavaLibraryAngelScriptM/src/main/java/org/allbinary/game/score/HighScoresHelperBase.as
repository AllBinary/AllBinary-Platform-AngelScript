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

class HighScoresHelperBase : JObjectBase, HighScoresHelperBaseInterface
{
    LogUtil@ logUtil;
    HighScores@[]@ highScoresArrayP;

    // Java field initializers run after the super constructor
    void jfields_HighScoresHelperBase()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.highScoresArrayP = LastFetchHighScoresFactory::getInstance().highScoresArray;
    }

    HighScoresHelperBase@ jinit_HighScoresHelperBase()
    {
        this.jfields_HighScoresHelperBase();
        return this;
    }
    

    void setHighScoresArray(HighScores@[]@ highScoresArrayP)
    {
        if (highScoresArrayP !is null) {
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(commonStrings.START).appendint(int(highScoresArrayP.length())).toString(), this, "setHighScoresArray");
        } else {
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.putF(commonStrings.START, this, "setHighScoresArray");
        }
        @this.highScoresArrayP = highScoresArrayP;
    }
    

    HighScores@ getNextHighScores()
    {
        return NullHighScoresSingletonFactory::getInstance();
    }
    

    bool isAnyHighScores()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return false;
    }
    

    void setSelectedHighScores(HighScores@ selectedHighScores)
    {
    }
    

    HighScores@ getSelectedHighScores()
    {
        return NullHighScoresSingletonFactory::getInstance();
    }
    

    HighScores@[]@ getHighScoresArray()
    {
        return this.highScoresArrayP;
    }
    

    void selectHighScores()
    {
    }
}

