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
// package org.allbinary.animation.image

class AdjustedImageArrayAnimation : ImageArrayAnimation
{
    int dx_AdjustedImageArrayAnimation;
    int dy_AdjustedImageArrayAnimation;
    

    AdjustedImageArrayAnimation@ jinit_AdjustedImageArrayAnimation(Image@[]@ imageArray, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageArrayAnimation(imageArray, animationBehavior);
        this.init(dx, dy);
        return this;
    }
    

    void init(int dx, int dy)
    {
        this.setDx(dx);
        this.setDy(dy);
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        ImageArrayAnimation::paintXY(graphics, x + this.dx_AdjustedImageArrayAnimation, y + this.dy_AdjustedImageArrayAnimation);
    }
    

    void setDx(int dx)
    {
        this.dx_AdjustedImageArrayAnimation = dx;
    }
    

    int getDx()
    {
        return this.dx_AdjustedImageArrayAnimation;
    }
    

    void setDy(int dy)
    {
        this.dy_AdjustedImageArrayAnimation = dy;
    }
    

    int getDy()
    {
        return this.dy_AdjustedImageArrayAnimation;
    }
}

