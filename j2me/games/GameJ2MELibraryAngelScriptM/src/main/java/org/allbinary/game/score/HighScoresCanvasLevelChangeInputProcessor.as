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

class HighScoresCanvasLevelChangeInputProcessor : HighScoresCanvasInputProcessor, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfoSingleton_HighScoresCanvasLevelChangeInputProcessor;
    string INSTRUCTIONS_HighScoresCanvasLevelChangeInputProcessor;
    MyFontProcessor@ myFontProcessor_HighScoresCanvasLevelChangeInputProcessor;
    int anchor_HighScoresCanvasLevelChangeInputProcessor;
    int fontHeight_HighScoresCanvasLevelChangeInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_HighScoresCanvasLevelChangeInputProcessor()
    {
    @this.displayInfoSingleton_HighScoresCanvasLevelChangeInputProcessor = DisplayInfoSingleton::getInstance();
    this.INSTRUCTIONS_HighScoresCanvasLevelChangeInputProcessor = "(Right = Next Track, Left = Previous Track)";
    @this.myFontProcessor_HighScoresCanvasLevelChangeInputProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    this.anchor_HighScoresCanvasLevelChangeInputProcessor = Anchor::TOP_LEFT;
    this.fontHeight_HighScoresCanvasLevelChangeInputProcessor = 0;
    }
    

    HighScoresCanvasLevelChangeInputProcessor@ jinit_HighScoresCanvasLevelChangeInputProcessor(HighScoresCanvas@ highScoresCanvas)
    {
        this.jinit_HighScoresCanvasInputProcessor(highScoresCanvas);
        this.jfields_HighScoresCanvasLevelChangeInputProcessor();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.fontHeight_HighScoresCanvasLevelChangeInputProcessor = font.getHeight();
        @this.myFontProcessor_HighScoresCanvasLevelChangeInputProcessor = MyFontProcessor::getInstance();
    }
    

    void open()
    {
        GameKeyEventHandler::getInstance().addListener(this);
    }
    

    void close()
    {
        GameKeyEventHandler::getInstance().removeListener(this);
    }
    

    void update()
    {
        BasicArrayList@ list = this.getGameKeyEventList();
        int size = list.size();
        for (int index = 0; index < size; index++) {
            JObject@ anyType = list.objectArray[index];
            int key = GameKeyEventUtil::getKey(anyType);
            if (key == Canvas::RIGHT) {
                this.getHighScoresCanvas().getGameInfo().nextGameLevel();
            } else if (key == Canvas::LEFT) {
                this.getHighScoresCanvas().getGameInfo().previousGameLevel();
            }
            this.getHighScoresCanvas().executeUpdate();
        }
        list.clear();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_HighScoresCanvasLevelChangeInputProcessor.process(graphics);
        int width = this.displayInfoSingleton_HighScoresCanvasLevelChangeInputProcessor.getLastWidth();
        int topScoresWidth = (graphics.getFont().stringWidth(this.INSTRUCTIONS_HighScoresCanvasLevelChangeInputProcessor) >>> 1);
        graphics.drawString(this.INSTRUCTIONS_HighScoresCanvasLevelChangeInputProcessor, (width >>> 1) - topScoresWidth, this.fontHeight_HighScoresCanvasLevelChangeInputProcessor * 2, this.anchor_HighScoresCanvasLevelChangeInputProcessor);
    }
}

