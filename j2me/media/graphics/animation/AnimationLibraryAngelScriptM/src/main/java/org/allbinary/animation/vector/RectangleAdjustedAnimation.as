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

class RectangleAdjustedAnimation : Animation, ColorCompositeInterface
{
    int width_RectangleAdjustedAnimation;
    int height_RectangleAdjustedAnimation;
    int offsetX_RectangleAdjustedAnimation;
    int offsetY_RectangleAdjustedAnimation;
    

    RectangleAdjustedAnimation@ jinit_RectangleAdjustedAnimation(int width, int height, int offsetX, int offsetY, BasicColor@ basicColor)
    {
        this.jinit_Animation();
        this.width_RectangleAdjustedAnimation = width;
        this.height_RectangleAdjustedAnimation = height;
        this.offsetX_RectangleAdjustedAnimation = offsetX;
        this.offsetY_RectangleAdjustedAnimation = offsetY;
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawRect(x + this.offsetX_RectangleAdjustedAnimation, y + this.offsetY_RectangleAdjustedAnimation, this.width_RectangleAdjustedAnimation, this.height_RectangleAdjustedAnimation);
    }
    

    void setWidth(int width)
    {
        this.width_RectangleAdjustedAnimation = width;
    }
    

    void setHeight(int height)
    {
        this.height_RectangleAdjustedAnimation = height;
    }
    

    void setOffsetX(int offsetX)
    {
        this.offsetX_RectangleAdjustedAnimation = offsetX;
    }
    

    void setOffsetY(int offsetY)
    {
        this.offsetY_RectangleAdjustedAnimation = offsetY;
    }
    

    BasicColor@ getBasicColorP()
    {
        return Animation::getBasicColorP();
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        Animation::setBasicColorP(basicColor);
    }
}

