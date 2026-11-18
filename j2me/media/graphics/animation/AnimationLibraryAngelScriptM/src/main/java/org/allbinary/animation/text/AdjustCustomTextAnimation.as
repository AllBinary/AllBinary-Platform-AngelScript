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
// package org.allbinary.animation.text

class AdjustCustomTextAnimation : CustomTextAnimation
{
    int dx_AdjustCustomTextAnimation;
    int dy_AdjustCustomTextAnimation;
    

    AdjustCustomTextAnimation@ jinit_AdjustCustomTextAnimation(string text, int fontSize, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_CustomTextAnimation(text, fontSize, animationBehavior);
        this.dx_AdjustCustomTextAnimation = dx;
        this.dy_AdjustCustomTextAnimation = dy;
        return this;
    }
    

    int getDx()
    {
        return this.dx_AdjustCustomTextAnimation;
    }
    

    void setDx(int dx)
    {
        this.dx_AdjustCustomTextAnimation = dx;
    }
    

    int getDy()
    {
        return this.dy_AdjustCustomTextAnimation;
    }
    

    void setDy(int dy)
    {
        this.dy_AdjustCustomTextAnimation = dy;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        CustomTextAnimation::paintXY(graphics, x + this.dx_AdjustCustomTextAnimation, y + this.dy_AdjustCustomTextAnimation);
    }
}

