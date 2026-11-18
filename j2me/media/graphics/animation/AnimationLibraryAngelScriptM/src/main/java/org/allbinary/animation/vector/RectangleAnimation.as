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

class RectangleAnimation : Animation, ColorCompositeInterface
{
    int width_RectangleAnimation;
    int height_RectangleAnimation;
    

    RectangleAnimation@ jinit_RectangleAnimation(int width, int height, BasicColor@ basicColor)
    {
        this.jinit_Animation();
        this.width_RectangleAnimation = width;
        this.height_RectangleAnimation = height;
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawRect(x, y, this.width_RectangleAnimation, this.height_RectangleAnimation);
    }
    

    void setWidth(int width)
    {
        this.width_RectangleAnimation = width;
    }
    

    void setHeight(int height)
    {
        this.height_RectangleAnimation = height;
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

