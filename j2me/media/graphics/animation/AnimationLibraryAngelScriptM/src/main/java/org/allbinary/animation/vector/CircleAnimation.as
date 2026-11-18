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

class CircleAnimation : Animation, ColorCompositeInterface
{
    int TOTAL_ANGLE;
    int width;
    int height;

    // Java field initializers run after the super constructor
    void jfields_CircleAnimation()
    {
    this.TOTAL_ANGLE = int(AngleFactory::getInstance().TOTAL_ANGLE);
    
    
    }
    

    CircleAnimation@ jinit_CircleAnimation(int width, int height, BasicColor@ basicColor)
    {
        this.jinit_Animation();
        this.jfields_CircleAnimation();
        this.width = width;
        this.height = height;
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawArc(x, y, this.width, this.height, 0, this.TOTAL_ANGLE);
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

