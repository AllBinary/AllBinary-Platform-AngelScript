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

class HighScoresHelper : HighScoresHelperBase
{
    CircularIndexUtil@ circularIndexUtil_HighScoresHelper;
    int lastIndex;

    // Java field initializers run after the super constructor
    void jfields_HighScoresHelper()
    {
    @this.circularIndexUtil_HighScoresHelper = CircularIndexUtil::createInstanceAt(0, 0);
    this.lastIndex = -1;
    }

    HighScoresHelper@ jinit_HighScoresHelper()
    {
        this.jinit_HighScoresHelperBase();
        this.jfields_HighScoresHelper();
        return this;
    }
    

    void setHighScoresArray(HighScores@[]@ highScoresArrayP)
    {
        HighScoresHelperBase::setHighScoresArray(highScoresArrayP);
        this.circularIndexUtil_HighScoresHelper.setSize(int(this.highScoresArrayP.length()));
    }
    

    HighScores@ getNextHighScores()
    {
        HighScores@ highScores = this.highScoresArrayP[this.circularIndexUtil_HighScoresHelper.getIndex()];
        int index = 0;
        while ((highScores.getTotal() < 1 || this.lastIndex == this.circularIndexUtil_HighScoresHelper.getIndex()) && index < int(this.highScoresArrayP.length())) {
            this.circularIndexUtil_HighScoresHelper.next();
            @highScores = this.highScoresArrayP[this.circularIndexUtil_HighScoresHelper.getIndex()];
            index++;
        }
        this.lastIndex = this.circularIndexUtil_HighScoresHelper.getIndex();
        return highScores;
    }
    

    bool isAnyHighScores()
    {
        if (int(this.highScoresArrayP.length()) < 1) {
            return false;
        }
        bool anyScores = false;
        HighScores@ highScores;
        for (int index = int(this.highScoresArrayP.length()) - 1; index >= 0; index--) {
            @highScores = this.highScoresArrayP[index];
            if (highScores.getTotal() > 0) {
                anyScores = true;
            }
        }
        return anyScores;
    }
}

