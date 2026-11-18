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

class HighScoresHelper2 : HighScoresHelperBase
{
    CircularIndexUtil@ circularIndexUtil_HighScoresHelper2;
    HighScores@ selectedHighScores_HighScoresHelper2;

    // Java field initializers run after the super constructor
    void jfields_HighScoresHelper2()
    {
    @this.circularIndexUtil_HighScoresHelper2 = CircularIndexUtil::createInstanceAt(0, 0);
    @this.selectedHighScores_HighScoresHelper2 = NullHighScoresSingletonFactory::getInstance();
    }

    HighScoresHelper2@ jinit_HighScoresHelper2()
    {
        this.jinit_HighScoresHelperBase();
        this.jfields_HighScoresHelper2();
        return this;
    }
    

    void setSelectedHighScores(HighScores@ selectedHighScores)
    {
        @this.selectedHighScores_HighScoresHelper2 = selectedHighScores;
    }
    

    HighScores@ getSelectedHighScores()
    {
        return this.selectedHighScores_HighScoresHelper2;
    }
    

    void setHighScoresArray(HighScores@[]@ highScoresArrayP)
    {
        HighScoresHelperBase::setHighScoresArray(highScoresArrayP);
        this.circularIndexUtil_HighScoresHelper2.setSize(int(this.highScoresArrayP.length()));
        this.selectHighScores();
    }
    

    void selectHighScores()
    {
        if (int(this.highScoresArrayP.length()) == 0) {
            this.setSelectedHighScores(NullHighScoresSingletonFactory::getInstance());
            return;
        }
        this.circularIndexUtil_HighScoresHelper2.next();
        HighScores@ highScores = this.highScoresArrayP[this.circularIndexUtil_HighScoresHelper2.getIndex()];
        int index = 0;
        while (highScores.getTotal() < 1 && index < int(this.highScoresArrayP.length())) {
            @highScores = this.highScoresArrayP[this.circularIndexUtil_HighScoresHelper2.next()];
            index++;
        }
        this.setSelectedHighScores(highScores);
    }
}

