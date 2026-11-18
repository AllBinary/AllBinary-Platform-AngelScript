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
// package org.allbinary.game.layer

class SWTBlackPaintable : Paintable
{
    BasicColorSetUtil@ basicSetColorUtil_SWTBlackPaintable;
    BasicColor@ BLACK_SWTBlackPaintable;

    // Java field initializers run after the super constructor
    void jfields_SWTBlackPaintable()
    {
    @this.basicSetColorUtil_SWTBlackPaintable = BasicColorSetUtil::getInstance();
    @this.BLACK_SWTBlackPaintable = BasicColorFactory::getInstance().BLACK;
    }

    SWTBlackPaintable@ jinit_SWTBlackPaintable()
    {
        this.jinit_Paintable();
        this.jfields_SWTBlackPaintable();
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.basicSetColorUtil_SWTBlackPaintable.setBasicColorP(graphics, this.BLACK_SWTBlackPaintable);
    }
}

