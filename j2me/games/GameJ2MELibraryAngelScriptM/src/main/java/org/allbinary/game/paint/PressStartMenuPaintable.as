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

class PressStartMenuPaintable : Paintable, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfo_PressStartMenuPaintable;
    string PRESS_START_PressStartMenuPaintable;
    string KEY_START_PressStartMenuPaintable;
    string MENU_START_PressStartMenuPaintable;
    MyFontProcessor@ myFontProcessor_PressStartMenuPaintable;
    string startString_PressStartMenuPaintable;
    TimeDelayHelper@ timeDelayHelper_PressStartMenuPaintable;
    bool flash_PressStartMenuPaintable;
    int anchor_PressStartMenuPaintable;
    int beginWidth_PressStartMenuPaintable;
    int line_PressStartMenuPaintable;

    // Java field initializers run after the super constructor
    void jfields_PressStartMenuPaintable()
    {
    @this.displayInfo_PressStartMenuPaintable = DisplayInfoSingleton::getInstance();
    this.PRESS_START_PressStartMenuPaintable = "Press Screen To Start";
    this.KEY_START_PressStartMenuPaintable = "Press or Click F2 To Begin";
    this.MENU_START_PressStartMenuPaintable = "Press Start From The Menu To Begin";
    @this.myFontProcessor_PressStartMenuPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    this.startString_PressStartMenuPaintable = StringUtil::getInstance().EMPTY_STRING;
    @this.timeDelayHelper_PressStartMenuPaintable = TimeDelayHelper().jinit_TimeDelayHelper(1100);
    
    this.anchor_PressStartMenuPaintable = Anchor::TOP_LEFT;
    
    
    }
    

    PressStartMenuPaintable@ jinit_PressStartMenuPaintable()
    {
        this.jinit_Paintable();
        this.jfields_PressStartMenuPaintable();
        if (TouchScreenFactory::getInstance().isTouch()) {
            this.startString_PressStartMenuPaintable = this.PRESS_START_PressStartMenuPaintable;
        } else if (AppletUtil::isAppletLoader(this)) {
            this.startString_PressStartMenuPaintable = this.KEY_START_PressStartMenuPaintable;
        } else {
            this.startString_PressStartMenuPaintable = this.MENU_START_PressStartMenuPaintable;
        }
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.beginWidth_PressStartMenuPaintable = (graphics.getFont().stringWidth(this.startString_PressStartMenuPaintable) >>> 1);
        this.line_PressStartMenuPaintable = (4 * MyFontProcessor::defaultCharWidth(font)) + (font.getHeight() >>> 1);
        @this.myFontProcessor_PressStartMenuPaintable = MyFontProcessor::getInstance();
    }
    

    void paint(Graphics@ graphics)
    {
        if (this.timeDelayHelper_PressStartMenuPaintable.isTimeTNT()) {
            if (this.isFlash()) {
                this.setFlash(false);
            } else {
                this.setFlash(true);
            }
        }
        if (this.isFlash()) {
            this.myFontProcessor_PressStartMenuPaintable.process(graphics);
            graphics.drawString(this.startString_PressStartMenuPaintable, this.displayInfo_PressStartMenuPaintable.getLastHalfWidth() - this.beginWidth_PressStartMenuPaintable, this.displayInfo_PressStartMenuPaintable.getLastHeight() - this.line_PressStartMenuPaintable, this.anchor_PressStartMenuPaintable);
        }
    }
    

    void setFlash(bool flash)
    {
        this.flash_PressStartMenuPaintable = flash;
    }
    

    bool isFlash()
    {
        return this.flash_PressStartMenuPaintable;
    }
}

