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

class ColorFillPaintable : ColorFillBasePaintable
{
    DisplayInfoSingleton@ displayInfoSingleton;

    // Java field initializers run after the super constructor
    void jfields_ColorFillPaintable()
    {
    @this.displayInfoSingleton = DisplayInfoSingleton::getInstance();
    }
    

    ColorFillPaintable@ jinit_ColorFillPaintable(BasicColor@ basicColor)
    {
        this.jinit_ColorFillBasePaintable(basicColor);
        this.jfields_ColorFillPaintable();
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        graphics.setColor(this.colorP);
        graphics.fillRect(0, 0, this.displayInfoSingleton.getLastWidth(), this.displayInfoSingleton.getLastHeight());
    }
}

