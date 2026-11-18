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

class HealthBar : Paintable, HealthListenerInterface
{
    HealthBarAnimation@ animationInterface_HealthBar;
    HealthInterface@ healthInterface_HealthBar;
    AllBinaryLayer@ allbinaryLayer;
    

    HealthBar@ jinit_HealthBar(AllBinaryLayer@ layerInterface, Health@ healthInterface, HealthBarAnimation@ animationInterface, int direction)
    {
        this.jinit_Paintable();
        @this.allbinaryLayer = layerInterface;
        @this.animationInterface_HealthBar = animationInterface;
        @this.healthInterface_HealthBar = healthInterface;
        this.healthInterface_HealthBar.addListener(this);
        this.onHealthChange();
        return this;
    }
    

    void onHealthChange()
    {
        this.animationInterface_HealthBar.onHealthChange(this.healthInterface_HealthBar.getHealth() * this.allbinaryLayer.getWidth() / this.healthInterface_HealthBar.getMaxHealth());
    }
    

    void paint(Graphics@ graphics)
    {
        this.animationInterface_HealthBar.paintXY(graphics, 0, 0);
    }
    

    void paintThreed(Graphics@ graphics)
    {
        this.animationInterface_HealthBar.paintThreedXYZ(graphics, 0, 0, 0);
    }
}

