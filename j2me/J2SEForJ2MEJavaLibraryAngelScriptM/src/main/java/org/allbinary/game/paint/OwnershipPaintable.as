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
class OwnershipPaintable : Paintable, UpdateMyFontInterface
{
    LogUtil@ logUtil;
    DisplayInfoSingleton@ displayInfo_OwnershipPaintable;
    MyFontProcessor@ myFontProcessor_OwnershipPaintable;
    string COPYRIGHT_OwnershipPaintable;
    BasicColor@ basicColor_OwnershipPaintable;
    int color_OwnershipPaintable;
    int anchor_OwnershipPaintable;
    int COPYRIGHT_Y_OwnershipPaintable;
    int beginWidth_OwnershipPaintable;

    // Java field initializers run after the super constructor
    void jfields_OwnershipPaintable()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.displayInfo_OwnershipPaintable = DisplayInfoSingleton::getInstance();
    @this.myFontProcessor_OwnershipPaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    this.COPYRIGHT_OwnershipPaintable = "AllBinary Copyright (c) 2011";
    @this.basicColor_OwnershipPaintable = BasicColorFactory::getInstance().WHITE;
    this.color_OwnershipPaintable = this.basicColor_OwnershipPaintable.intValue();
    this.anchor_OwnershipPaintable = Anchor::TOP_LEFT;
    
    
    }
    

    OwnershipPaintable@ jinit_OwnershipPaintable()
    {
        this.jinit_Paintable();
        this.jfields_OwnershipPaintable();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.COPYRIGHT_Y_OwnershipPaintable = 2 * font.getHeight();
        this.beginWidth_OwnershipPaintable = (font.stringWidth(this.COPYRIGHT_OwnershipPaintable) >>> 1);
        @this.myFontProcessor_OwnershipPaintable = MyFontProcessor::getInstance();
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_OwnershipPaintable = basicColor;
        this.color_OwnershipPaintable = basicColor.intValue();
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_OwnershipPaintable;
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_OwnershipPaintable.process(graphics);
        graphics.setColor(this.color_OwnershipPaintable);
        int halfWidth = this.displayInfo_OwnershipPaintable.getLastHalfWidth();
        int height = this.displayInfo_OwnershipPaintable.getLastHeight();
        graphics.drawString(this.COPYRIGHT_OwnershipPaintable, halfWidth - this.beginWidth_OwnershipPaintable, height - this.COPYRIGHT_Y_OwnershipPaintable, this.anchor_OwnershipPaintable);
    }
}

namespace OwnershipPaintable
{
    

    OwnershipPaintable@ getInstance()
    {
        return OwnershipPaintable().jinit_OwnershipPaintable();
    }
}

