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

class StartIntermissionPaintable : InitUpdatePaintable, UpdateMyFontInterface
{
    FontDebugFactory@ fontDebugFactory;
    BasicColorSetUtil@ basicSetColorUtil;
    AllBinaryGameCanvas@ gameCanvas;
    string[]@ stringArray;
    int fontSize;
    Font@ font;
    int[]@ lastWidth;
    MyFontProcessor@ updateMyFontProcessor_StartIntermissionPaintable;
    MyFontProcessor@ myFontProcessor_StartIntermissionPaintable;
    BasicColor@ basicColor_StartIntermissionPaintable;
    int color_StartIntermissionPaintable;
    int[]@ lineYOffsetArray;
    bool hasChanged_StartIntermissionPaintable;
    int anchor_StartIntermissionPaintable;
    int fontHeightP;
    string BEGIN_LEVEL_StartIntermissionPaintable;
    string EMPTY_STRING_StartIntermissionPaintable;

    // Java field initializers run after the super constructor
    void jfields_StartIntermissionPaintable()
    {
    @this.fontDebugFactory = FontDebugFactory::getInstance();
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    
    
    
    
    
    @this.updateMyFontProcessor_StartIntermissionPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor_StartIntermissionPaintable = this.updateMyFontProcessor_StartIntermissionPaintable;
    @this.basicColor_StartIntermissionPaintable = BasicColorFactory::getInstance().BLACK;
    
    @this.lineYOffsetArray = NullUtil::getInstance().NULL_INT_ARRAY;
    this.hasChanged_StartIntermissionPaintable = true;
    this.anchor_StartIntermissionPaintable = Anchor::TOP_LEFT;
    
    this.BEGIN_LEVEL_StartIntermissionPaintable = "Begin Level ";
    this.EMPTY_STRING_StartIntermissionPaintable = StringUtil::getInstance().EMPTY_STRING;
    }
    

    StartIntermissionPaintable@ jinit_StartIntermissionPaintable(AllBinaryGameCanvas@ gameCanvas, string[]@ stringArray, BasicColor@ basicColor, Font@ font)
    {
        this.jinit_InitUpdatePaintable();
        this.jfields_StartIntermissionPaintable();
        @this.gameCanvas = gameCanvas;
        @this.stringArray = stringArray;
        @this.lastWidth = array<int>(int(this.stringArray.length()));
        this.setBasicColorP(basicColor);
        this.color_StartIntermissionPaintable = basicColor.intValue();
        this.fontSize = font.getSize();
        @this.font = font;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.fontHeightP = font.getHeight();
        @this.myFontProcessor_StartIntermissionPaintable = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_StartIntermissionPaintable.process(graphics);
        Font@ existingFont = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor_StartIntermissionPaintable, this.color_StartIntermissionPaintable);
        int beginWidth = 0;
        for (int index = int(this.lineYOffsetArray.length()) - 1; index >= 0; index--) {
            if (this.hasChanged_StartIntermissionPaintable) {
                this.lastWidth[index] = (graphics.getFont().stringWidth(this.stringArray[index]) >>> 1);
            }
            beginWidth = this.lastWidth[index];
            graphics.drawString(this.stringArray[index], displayInfo.getLastHalfWidth() - beginWidth, displayInfo.getLastHalfHeight() - this.lineYOffsetArray[index], this.anchor_StartIntermissionPaintable);
        }
        this.hasChanged_StartIntermissionPaintable = false;
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    void update()
    {
        int level = this.gameCanvas.getLayerManager().getGameInfo().getCurrentLevel();
        this.stringArray[0] = StringMaker().jinit_StringMaker().append(this.BEGIN_LEVEL_StartIntermissionPaintable).appendint(level).toString();
        for (int index = int(this.stringArray.length()) - 1; index >= 1; index--) {
            this.stringArray[index] = this.EMPTY_STRING_StartIntermissionPaintable;
        }
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_StartIntermissionPaintable = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_StartIntermissionPaintable;
    }
}

