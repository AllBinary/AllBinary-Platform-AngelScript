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

class RectangleFilledAnimation : Animation, ColorCompositeInterface
{
    int widthP;
    int heightP;
    

    RectangleFilledAnimation@ jinit_RectangleFilledAnimation(int width, int height, BasicColor@ basicColor)
    {
        this.jinit_Animation();
        this.widthP = width;
        this.heightP = height;
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.fillRect(x, y, this.widthP, this.heightP);
    }
    

    void setWidth(int width)
    {
        this.widthP = width;
    }
    

    void setHeight(int height)
    {
        this.heightP = height;
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

