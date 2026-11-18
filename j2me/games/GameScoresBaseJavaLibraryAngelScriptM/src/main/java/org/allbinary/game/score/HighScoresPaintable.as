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

class HighScoresPaintable : Paintable, ColorChangeListener, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfoSingleton_HighScoresPaintable;
    MyFontProcessor@ myFontProcessor_HighScoresPaintable;
    BasicColor@ basicColor_HighScoresPaintable;
    HighScores@ highScores_HighScoresPaintable;
    int anchor_HighScoresPaintable;
    int charHeight_HighScoresPaintable;

    // Java field initializers run after the super constructor
    void jfields_HighScoresPaintable()
    {
    @this.displayInfoSingleton_HighScoresPaintable = DisplayInfoSingleton::getInstance();
    @this.myFontProcessor_HighScoresPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.basicColor_HighScoresPaintable = BasicColorFactory::getInstance().WHITE;
    @this.highScores_HighScoresPaintable = NullHighScoresSingletonFactory::getInstance();
    this.anchor_HighScoresPaintable = Anchor::TOP_LEFT;
    
    }
    

    HighScoresPaintable@ jinit_HighScoresPaintable()
    {
        this.jinit_Paintable();
        this.jfields_HighScoresPaintable();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.charHeight_HighScoresPaintable = font.getHeight();
        @this.myFontProcessor_HighScoresPaintable = MyFontProcessor::getInstance();
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ColorChangeEvent@ colorChangeEvent = cast<ColorChangeEvent>(eventObject);
        @this.basicColor_HighScoresPaintable = colorChangeEvent.getBasicColorP();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_HighScoresPaintable.process(graphics);
        int width = this.displayInfoSingleton_HighScoresPaintable.getLastWidth();
        int height = this.displayInfoSingleton_HighScoresPaintable.getLastHeight();
        graphics.setColor(this.getBasicColorP().intValue());
        string heading = this.highScores_HighScoresPaintable.getHeading();
        int topScoresWidth = (graphics.getFont().stringWidth(heading) >>> 1);
        int charHeight = this.charHeight_HighScoresPaintable;
        graphics.drawString(heading, (width >>> 1) - topScoresWidth, charHeight, this.anchor_HighScoresPaintable);
        graphics.drawString(this.highScores_HighScoresPaintable.getColumnOneHeading(), 10, charHeight * 3, this.anchor_HighScoresPaintable);
        string columnTwoHeading = this.highScores_HighScoresPaintable.getColumnTwoHeading();
        int columnTwoHeadingWidth = graphics.getFont().stringWidth(columnTwoHeading);
        graphics.drawString(columnTwoHeading, width - 10 - columnTwoHeadingWidth, charHeight * 3, this.anchor_HighScoresPaintable);
        int index = 4;
        int largestSecondColumnWidth = columnTwoHeadingWidth;
        BasicArrayList@ list = this.highScores_HighScoresPaintable.getList();
        int size = list.size();
        int vectorIndex = 0;
        HighScore@ highScore;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            @highScore = cast<HighScore>(list.objectArray[vectorIndex]);
            int nextScoreWidth = graphics.getFont().stringWidth(highScore.getScoreString());
            if (nextScoreWidth > largestSecondColumnWidth) {
                largestSecondColumnWidth = nextScoreWidth;
            }
            vectorIndex++;
        }
        vectorIndex = 0;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            @highScore = cast<HighScore>(list.objectArray[vectorIndex]);
            graphics.drawString(highScore.getName(), 10, charHeight * index, this.anchor_HighScoresPaintable);
            graphics.drawString(highScore.getScoreString(), width - 10 - largestSecondColumnWidth, charHeight * index, this.anchor_HighScoresPaintable);
            index++;
            vectorIndex++;
        }
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_HighScoresPaintable = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_HighScoresPaintable;
    }
    

    void setHighScores(HighScores@ highScores)
    {
        @this.highScores_HighScoresPaintable = highScores;
    }
}

