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

class AdjustedImageBaseRotationAnimation : ImageBaseRotationAnimation
{
    int dx_AdjustedImageBaseRotationAnimation;
    int dy_AdjustedImageBaseRotationAnimation;
    

    AdjustedImageBaseRotationAnimation@ jinit_AdjustedImageBaseRotationAnimation(Image@ image, AngleInfo@ angleInfo, int16 totalAngle, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageBaseRotationAnimation(image, angleInfo, totalAngle, animationBehavior);
        this.init(dx, dy);
        return this;
    }
    

    void init(int dx, int dy)
    {
        this.dx_AdjustedImageBaseRotationAnimation = dx;
        this.dy_AdjustedImageBaseRotationAnimation = dy;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        ImageBaseRotationAnimation::paintXY(graphics, x + this.dx_AdjustedImageBaseRotationAnimation, y + this.dy_AdjustedImageBaseRotationAnimation);
    }
}

