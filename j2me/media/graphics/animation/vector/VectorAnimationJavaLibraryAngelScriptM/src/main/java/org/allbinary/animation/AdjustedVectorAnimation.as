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
// package org.allbinary.animation

class AdjustedVectorAnimation : VectorAnimation
{
    int dx_AdjustedVectorAnimation;
    int dy_AdjustedVectorAnimation;
    

    AdjustedVectorAnimation@ jinit_AdjustedVectorAnimation(int[]@[]@[]@ currentPoints, BasicColor@ basicColor, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_VectorAnimation(currentPoints, basicColor, animationBehavior);
        this.dx_AdjustedVectorAnimation = dx;
        this.dy_AdjustedVectorAnimation = dy;
        return this;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        VectorAnimation::paintXY(graphics, x + this.dx_AdjustedVectorAnimation, y + this.dy_AdjustedVectorAnimation);
    }
}

