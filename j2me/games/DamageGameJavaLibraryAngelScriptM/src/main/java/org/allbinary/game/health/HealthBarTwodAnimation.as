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
// package org.allbinary.game.health

class HealthBarTwodAnimation : HealthBarAnimation
{
    

    HealthBarTwodAnimation@ jinit_HealthBarTwodAnimation(AllBinaryLayer@ layerInterface, int location)
    {
        this.jinit_HealthBarAnimation(layerInterface, location);
        return this;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        int ax = this.allbinaryLayer.getViewPosition().getX();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.colorP);
        graphics.fillRect(ax, this.getY() - 1, this.x2, this.thickness);
    }
}

