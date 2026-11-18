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

class ColorFillBasePaintable : Paintable, ColorCompositeInterface
{
    BasicColor@ basicColor;
    int colorP;

    // Java field initializers run after the super constructor
    void jfields_ColorFillBasePaintable()
    {
    @this.basicColor = BasicColorFactory::getInstance().WHITE;
    
    }
    

    ColorFillBasePaintable@ jinit_ColorFillBasePaintable(BasicColor@ basicColor)
    {
        this.jinit_Paintable();
        this.jfields_ColorFillBasePaintable();
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor = basicColor;
        this.setColor(this.getBasicColorP().intValue());
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor;
    }
    

    int getColor()
    {
        return this.colorP;
    }
    

    void setColor(int color)
    {
        this.colorP = color;
    }
    

    void paint(Graphics@ graphics)
    {
    }
}

