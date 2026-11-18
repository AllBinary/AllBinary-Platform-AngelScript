/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class AdjustedImageAnimation : ImageAnimation
{
    int dx_AdjustedImageAnimation;
    int dy_AdjustedImageAnimation;
    

    AdjustedImageAnimation@ jinit_AdjustedImageAnimation(Image@ image, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageAnimation(image, animationBehavior);
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
        ImageAnimation::paintXY(graphics, x + this.dx_AdjustedImageAnimation, y + this.dy_AdjustedImageAnimation);
    }
    

    void setDx(int dx)
    {
        this.dx_AdjustedImageAnimation = dx;
    }
    

    int getDx()
    {
        return this.dx_AdjustedImageAnimation;
    }
    

    void setDy(int dy)
    {
        this.dy_AdjustedImageAnimation = dy;
    }
    

    int getDy()
    {
        return this.dy_AdjustedImageAnimation;
    }
}

