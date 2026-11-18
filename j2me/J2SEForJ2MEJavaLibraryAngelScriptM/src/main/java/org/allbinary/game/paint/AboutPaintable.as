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
// package org.allbinary.game.paint

//J2SEForJ2ME
class AboutPaintable : Paintable, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfoSingleton_AboutPaintable;
    string ABOUT_AboutPaintable;
    string[]@ info_AboutPaintable;
    string[]@ developers_AboutPaintable;
    Paintable@[]@ paintableArray_AboutPaintable;
    MyFontProcessor@ myFontProcessor_AboutPaintable;
    int charHeight_AboutPaintable;
    int aboutBeginWidth_AboutPaintable;
    int[]@ infoBeginWidth_AboutPaintable;
    int[]@ developersBeginWidth_AboutPaintable;
    int anchor_AboutPaintable;

    // Java field initializers run after the super constructor
    void jfields_AboutPaintable()
    {
    @this.displayInfoSingleton_AboutPaintable = DisplayInfoSingleton::getInstance();
    this.ABOUT_AboutPaintable = CanvasStrings::getInstance().ABOUT;
    
    
    @this.paintableArray_AboutPaintable = array<Paintable@> = {this};
    @this.myFontProcessor_AboutPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    
    
    
    
    this.anchor_AboutPaintable = Anchor::TOP_LEFT;
    }
    

    AboutPaintable@ jinit_AboutPaintable(string[]@ info, string[]@ developers)
    {
        this.jinit_Paintable();
        this.jfields_AboutPaintable();
        @this.info_AboutPaintable = info;
        @this.infoBeginWidth_AboutPaintable = array<int>(int(this.info_AboutPaintable.length()));
        @this.developers_AboutPaintable = developers;
        @this.developersBeginWidth_AboutPaintable = array<int>(int(this.developers_AboutPaintable.length()));
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.charHeight_AboutPaintable = font.getHeight();
        this.aboutBeginWidth_AboutPaintable = (font.stringWidth(this.ABOUT_AboutPaintable) >>> 1);
        int infoSize = int(this.info_AboutPaintable.length());
        for (int index = 0; index < infoSize; index++) {
            this.infoBeginWidth_AboutPaintable[index] = (font.stringWidth(this.info_AboutPaintable[index]) >>> 1);
        }
        int size = int(this.developers_AboutPaintable.length());
        for (int index = 0; index < size; index++) {
            this.developersBeginWidth_AboutPaintable[index] = (font.stringWidth(this.developers_AboutPaintable[index]) >>> 1);
        }
        @this.myFontProcessor_AboutPaintable = MyFontProcessor::getInstance();
    }
    

    Paintable@[]@ getPaintableArrayInstance()
    {
        return this.paintableArray_AboutPaintable;
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_AboutPaintable.process(graphics);
        int halfWidth = this.displayInfoSingleton_AboutPaintable.getLastHalfWidth();
        graphics.drawString(this.ABOUT_AboutPaintable, halfWidth - this.aboutBeginWidth_AboutPaintable, 2 * this.charHeight_AboutPaintable, this.anchor_AboutPaintable);
        int infoSize = int(this.info_AboutPaintable.length());
        for (int index = 0; index < infoSize; index++) {
            graphics.drawString(this.info_AboutPaintable[index], halfWidth - this.infoBeginWidth_AboutPaintable[index], (4 + index) * this.charHeight_AboutPaintable, this.anchor_AboutPaintable);
        }
        int size = int(this.developers_AboutPaintable.length());
        for (int index = 0; index < size; index++) {
            graphics.drawString(this.developers_AboutPaintable[index], halfWidth - this.developersBeginWidth_AboutPaintable[index], (5 + infoSize + index) * this.charHeight_AboutPaintable, this.anchor_AboutPaintable);
        }
    }
}

namespace AboutPaintable
{
    

    AboutPaintable@ getInstance(string[]@ info, string[]@ developers)
    {
        return AboutPaintable().jinit_AboutPaintable(info, developers);
    }
}

