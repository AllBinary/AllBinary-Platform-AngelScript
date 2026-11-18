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

class HealthBarAnimation : Animation
{
    BasicColorFactory@ basicColorFactory_HealthBarAnimation;
    int x2;
    int thickness;
    int location_HealthBarAnimation;
    AllBinaryLayer@ allbinaryLayer;

    // Java field initializers run after the super constructor
    void jfields_HealthBarAnimation()
    {
    @this.basicColorFactory_HealthBarAnimation = BasicColorFactory::getInstance();
    
    
    
    
    }
    

    HealthBarAnimation@ jinit_HealthBarAnimation(AllBinaryLayer@ layerInterface, int location)
    {
        this.jinit_Animation();
        this.jfields_HealthBarAnimation();
        @this.allbinaryLayer = layerInterface;
        this.location_HealthBarAnimation = location;
        BasicHudFactory@ basicHudFactory = BasicHudFactory::getInstance();
        if (this.location_HealthBarAnimation != basicHudFactory.TOPLEFT && this.location_HealthBarAnimation != basicHudFactory.BOTTOMLEFT) {
            jthrow(Exception().jinit_Exception("Location Not Valid"));
        }
        if (layerInterface.getWidth() > 40) {
            this.thickness = 3;
        } else if (layerInterface.getWidth() > 20) {
            this.thickness = 2;
        } else {
            this.thickness = 1;
        }
        return this;
    }
    

    void onHealthChange(int newX2)
    {
        this.x2 = newX2;
        int quarter = (this.allbinaryLayer.getWidth() >>> 2);
        if (this.x2 > quarter * 3) {
            @this.basicColor = this.basicColorFactory_HealthBarAnimation.GREEN;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > quarter * 2) {
            @this.basicColor = this.basicColorFactory_HealthBarAnimation.YELLOW;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > quarter) {
            @this.basicColor = this.basicColorFactory_HealthBarAnimation.ORANGE;
            this.colorP = this.basicColor.intValue();
        } else {
            @this.basicColor = this.basicColorFactory_HealthBarAnimation.RED;
            this.colorP = this.basicColor.intValue();
        }
    }
    

    int getY()
    {
        BasicHudFactory@ basicHudFactory = BasicHudFactory::getInstance();
        if (this.location_HealthBarAnimation == basicHudFactory.TOPLEFT) {
            return this.allbinaryLayer.getViewPosition().getY() - 4;
        } else if (this.location_HealthBarAnimation == basicHudFactory.BOTTOMLEFT) {
            return this.allbinaryLayer.getViewPosition().getY2() + 4;
        }
        return -1;
    }
}

