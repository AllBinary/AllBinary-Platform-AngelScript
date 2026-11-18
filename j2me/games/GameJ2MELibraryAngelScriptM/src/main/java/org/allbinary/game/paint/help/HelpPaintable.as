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
// package org.allbinary.game.paint.help

class HelpPaintable : Paintable, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfo;
    MyFontProcessor@ updateMyFontProcessor;
    MyFontProcessor@ myFontProcessor;
    int anchor;
    string title;
    string[]@ inputInfo;
    BasicColor@ basicColor;
    int titleBeginWidth;
    int[]@ beginWidthArray_HelpPaintable;
    int charHeight_HelpPaintable;

    // Java field initializers run after the super constructor
    void jfields_HelpPaintable()
    {
    @this.displayInfo = DisplayInfoSingleton::getInstance();
    @this.updateMyFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor;
    this.anchor = Anchor::TOP_LEFT;
    
    @this.inputInfo = StringUtil::getInstance().getArrayInstance();
    
    
    @this.beginWidthArray_HelpPaintable = NullUtil::getInstance().NULL_INT_ARRAY;
    
    }
    

    HelpPaintable@ jinit_HelpPaintable(string title, BasicColor@ backgroundBasicColor, BasicColor@ basicColor)
    {
        this.jinit_Paintable();
        this.jfields_HelpPaintable();
        this.title = title;
        @this.basicColor = basicColor;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.titleBeginWidth = (font.stringWidth(this.title) >>> 1);
        this.charHeight_HelpPaintable = font.getHeight();
        int size = int(this.inputInfo.length());
        for (int index = 0; index < size; index++) {
            this.beginWidthArray_HelpPaintable[index] = (font.stringWidth(this.inputInfo[index]) >>> 1);
        }
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    void setInputInfoP(string[]@ inputInfo)
    {
        @this.inputInfo = inputInfo;
        @this.beginWidthArray_HelpPaintable = array<int>(int(this.inputInfo.length()));
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        int halfWidth = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, halfWidth - this.titleBeginWidth, this.charHeight_HelpPaintable, this.anchor);
        int size = int(this.inputInfo.length());
        for (int index = 0; index < size; index++) {
            graphics.drawString(this.inputInfo[index], halfWidth - this.beginWidthArray_HelpPaintable[index], (index + 3) * this.charHeight_HelpPaintable, this.anchor);
        }
    }
}

