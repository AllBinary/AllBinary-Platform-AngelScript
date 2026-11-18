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

class HighScoresCanvasInputProcessor : PlayerGameInput
{
    HighScoresCanvas@ highScoresCanvas_HighScoresCanvasInputProcessor;
    

    HighScoresCanvasInputProcessor@ jinit_HighScoresCanvasInputProcessor(HighScoresCanvas@ highScoresCanvas)
    {
        this.jinit_PlayerGameInput(BasicArrayListD().jinit_BasicArrayListD(), BasicArrayListD().jinit_BasicArrayListD(), -1);
        @this.highScoresCanvas_HighScoresCanvasInputProcessor = highScoresCanvas;
        return this;
    }
    

    void open()
    {
    }
    

    void close()
    {
    }
    

    void onPressGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        PlayerGameInput::onPressGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    void onDownGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        PlayerGameInput::onDownGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    void onUpGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
        PlayerGameInput::onUpGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    HighScoresCanvas@ getHighScoresCanvas()
    {
        return this.highScoresCanvas_HighScoresCanvasInputProcessor;
    }
}

