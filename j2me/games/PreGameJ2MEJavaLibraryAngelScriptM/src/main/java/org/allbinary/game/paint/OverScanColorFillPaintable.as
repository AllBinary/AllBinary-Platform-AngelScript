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

class OverScanColorFillPaintable : ColorFillPaintable
{
    

    OverScanColorFillPaintable@ jinit_OverScanColorFillPaintable(BasicColor@ basicColor)
    {
        this.jinit_ColorFillPaintable(basicColor);
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        graphics.setColor(this.colorP);
        graphics.fillRect(-graphics.getClipX(), -graphics.getClipY(), this.displayInfoSingleton.getLastWidth() + (graphics.getClipX() * 2), this.displayInfoSingleton.getLastHeight() + (graphics.getClipY() * 2));
    }
}

