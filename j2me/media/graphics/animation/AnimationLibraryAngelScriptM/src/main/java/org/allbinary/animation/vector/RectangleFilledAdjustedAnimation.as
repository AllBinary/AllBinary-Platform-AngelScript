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
// package org.allbinary.animation.vector

class RectangleFilledAdjustedAnimation : RectangleFilledAnimation, ColorCompositeInterface
{
    int offsetX_RectangleFilledAdjustedAnimation;
    int offsetY_RectangleFilledAdjustedAnimation;
    

    RectangleFilledAdjustedAnimation@ jinit_RectangleFilledAdjustedAnimation(int width, int height, int offsetX, int offsetY, BasicColor@ basicColor)
    {
        this.jinit_RectangleFilledAnimation(width, height, basicColor);
        this.offsetX_RectangleFilledAdjustedAnimation = offsetX;
        this.offsetY_RectangleFilledAdjustedAnimation = offsetY;
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        RectangleFilledAnimation::paintXY(graphics, x + this.offsetX_RectangleFilledAdjustedAnimation, y + this.offsetY_RectangleFilledAdjustedAnimation);
    }
    

    void setOffsetX(int offsetX)
    {
        this.offsetX_RectangleFilledAdjustedAnimation = offsetX;
    }
    

    void setOffsetY(int offsetY)
    {
        this.offsetY_RectangleFilledAdjustedAnimation = offsetY;
    }
    

    BasicColor@ getBasicColorP()
    {
        return RectangleFilledAnimation::getBasicColorP();
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        RectangleFilledAnimation::setBasicColorP(basicColor);
    }
}

