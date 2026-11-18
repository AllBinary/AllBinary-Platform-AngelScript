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
// package org.allbinary.game.ag.life

class HealthIncludingLifeBar : Paintable, HealthListenerInterface
{
    HealthBarAnimation@ animationInterface_HealthIncludingLifeBar;
    Life@ life_HealthIncludingLifeBar;
    HealthInterface@ healthInterface_HealthIncludingLifeBar;
    AllBinaryLayer@ allbinaryLayer;
    

    HealthIncludingLifeBar@ jinit_HealthIncludingLifeBar(AllBinaryLayer@ layerInterface, Life@ life, Health@ healthInterface, HealthBarAnimation@ animationInterface, int direction)
    {
        this.jinit_Paintable();
        @this.allbinaryLayer = layerInterface;
        @this.animationInterface_HealthIncludingLifeBar = animationInterface;
        @this.life_HealthIncludingLifeBar = life;
        @this.healthInterface_HealthIncludingLifeBar = healthInterface;
        this.healthInterface_HealthIncludingLifeBar.addListener(this);
        this.onHealthChange();
        return this;
    }
    

    void onHealthChange()
    {
        this.animationInterface_HealthIncludingLifeBar.onHealthChange(((this.healthInterface_HealthIncludingLifeBar.getHealth() + (this.healthInterface_HealthIncludingLifeBar.getMaxHealth() * int(this.life_HealthIncludingLifeBar.get()))) * this.allbinaryLayer.getWidth()) / (this.healthInterface_HealthIncludingLifeBar.getMaxHealth() + (this.healthInterface_HealthIncludingLifeBar.getMaxHealth() * int(this.life_HealthIncludingLifeBar.getStartLives()))));
    }
    

    void paint(Graphics@ graphics)
    {
        this.animationInterface_HealthIncludingLifeBar.paintXY(graphics, 0, 0);
    }
    

    void paintThreed(Graphics@ graphics)
    {
        this.animationInterface_HealthIncludingLifeBar.paintThreedXYZ(graphics, 0, 0, 0);
    }
}

namespace HealthIncludingLifeBar
{
    

    HealthIncludingLifeBar@ createHealthIncludingLifeBar(AllBinaryLayer@ layerInterface, Life@ life, Health@ healthInterface, int location, int direction)
    {
        return HealthIncludingLifeBar().jinit_HealthIncludingLifeBar(layerInterface, life, healthInterface, HealthBarTwodAnimation().jinit_HealthBarTwodAnimation(layerInterface, location), direction);
    }
}

