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

class HighScoresBase : JObjectBase, HighScoresFactoryInterface
{
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_HighScoresBase()
    {
    @this.commonStrings = CommonStrings::getInstance();
    }
    

    HighScoresBase@ jinit_HighScoresBase()
    {
        this.jfields_HighScoresBase();
        return this;
    }
    

    void fetchHighScores(GameInfo@ gameInfo, HighScoresResultsListener@ highScoresResultsListener)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
    

    void fetchHighScoresPreload(GameInfo@ gameInfo, HighScoresResultsListener@ highScoresResultsListener, bool preload)
    {
        jthrow(RuntimeException().jinit_RuntimeException());
    }
    

    HighScoresHelperBaseInterface@ createHighScoresHelper()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
}

