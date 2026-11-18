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
// package org.allbinary.graphics.paint

class SimpleTextPaintable : Paintable, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfoSingleton_SimpleTextPaintable;
    MyFontProcessor@ updateMyFontProcessor_SimpleTextPaintable;
    MyFontProcessor@ myFontProcessor_SimpleTextPaintable;
    string text_SimpleTextPaintable;
    BasicColor@ basicColor_SimpleTextPaintable;
    int topScoresWidth_SimpleTextPaintable;
    int fontHeight_SimpleTextPaintable;
    int anchor_SimpleTextPaintable;

    // Java field initializers run after the super constructor
    void jfields_SimpleTextPaintable()
    {
    @this.displayInfoSingleton_SimpleTextPaintable = DisplayInfoSingleton::getInstance();
    @this.updateMyFontProcessor_SimpleTextPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor_SimpleTextPaintable = this.updateMyFontProcessor_SimpleTextPaintable;
    
    
    this.topScoresWidth_SimpleTextPaintable = 0;
    this.fontHeight_SimpleTextPaintable = 0;
    this.anchor_SimpleTextPaintable = Anchor::TOP_LEFT;
    }
    

    SimpleTextPaintable@ jinit_SimpleTextPaintable(string text, BasicColor@ basicColor)
    {
        this.jinit_Paintable();
        this.jfields_SimpleTextPaintable();
        this.text_SimpleTextPaintable = text;
        @this.basicColor_SimpleTextPaintable = basicColor;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.topScoresWidth_SimpleTextPaintable = (font.stringWidth(this.text_SimpleTextPaintable) >>> 1);
        this.fontHeight_SimpleTextPaintable = font.getHeight();
        @this.myFontProcessor_SimpleTextPaintable = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_SimpleTextPaintable.process(graphics);
        int width = this.displayInfoSingleton_SimpleTextPaintable.getLast()[this.displayInfoSingleton_SimpleTextPaintable.WIDTH];
        graphics.setColor(this.getBasicColorP().intValue());
        graphics.drawString(this.text_SimpleTextPaintable, (width >>> 1) - this.topScoresWidth_SimpleTextPaintable, this.fontHeight_SimpleTextPaintable, this.anchor_SimpleTextPaintable);
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_SimpleTextPaintable = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_SimpleTextPaintable;
    }
    

    void setText(string text)
    {
        this.text_SimpleTextPaintable = text;
        @this.myFontProcessor_SimpleTextPaintable = this.updateMyFontProcessor_SimpleTextPaintable;
    }
    

    string getText()
    {
        return this.text_SimpleTextPaintable;
    }
}

