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
// package org.allbinary.game.displayable.canvas

class EndGameProcessor : Processor
{
    GameStateFactory@ gameStateFactory;
    AllBinaryGameCanvas@ gameCanvas_EndGameProcessor;
    int64 WAIT_EndGameProcessor;

    // Java field initializers run after the super constructor
    void jfields_EndGameProcessor()
    {
    @this.gameStateFactory = GameStateFactory::getInstance();
    
    this.WAIT_EndGameProcessor = 5000;
    }
    

    EndGameProcessor@ jinit_EndGameProcessor(AllBinaryGameCanvas@ gameCanvas)
    {
        this.jinit_Processor();
        this.jfields_EndGameProcessor();
        @this.gameCanvas_EndGameProcessor = gameCanvas;
        return this;
    }
    

    void process()
    {
        if (this.gameCanvas_EndGameProcessor.isHighScoreSubmitted()) {
            if (this.gameCanvas_EndGameProcessor.getGameStateTimeHelper().isElapsedTNT(this.WAIT_EndGameProcessor)) {
                if (this.gameCanvas_EndGameProcessor.getGameState() is this.gameStateFactory.SHOW_END_RESULT_GAME_STATE) {
                    HighScoresHelperBase@ highScoresBase = cast<HighScoresHelperBase>(this.gameCanvas_EndGameProcessor.highScoresHelper);
                    HighScores@ highScores = highScoresBase.getSelectedHighScores();
                    if (highScores !is NullHighScoresSingletonFactory::getInstance()) {
                        highScoresBase.selectHighScores();
                        this.gameCanvas_EndGameProcessor.getRealHighScoresPaintable().setHighScores(highScores);
                        this.gameCanvas_EndGameProcessor.setGameState(this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE);
                        this.gameCanvas_EndGameProcessor.setHighScoresPaintable(this.gameCanvas_EndGameProcessor.getRealHighScoresPaintable());
                    }
                } else if (this.gameCanvas_EndGameProcessor.getGameState() is this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
                    this.gameCanvas_EndGameProcessor.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
                    this.gameCanvas_EndGameProcessor.setHighScoresPaintable(NullPaintable::getInstance());
                }
            }
        }
    }
}

