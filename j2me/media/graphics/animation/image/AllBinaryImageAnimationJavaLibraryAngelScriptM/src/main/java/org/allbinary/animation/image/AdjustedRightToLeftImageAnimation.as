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

class AdjustedRightToLeftImageAnimation : RightToLeftImageAnimation
{
    int dx_AdjustedRightToLeftImageAnimation;
    int dy_AdjustedRightToLeftImageAnimation;
    

    AdjustedRightToLeftImageAnimation@ jinit_AdjustedRightToLeftImageAnimation(Image@ image, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RightToLeftImageAnimation(image, animationBehavior);
        this.init(dx, dy);
        return this;
    }
    

    void init(int dx, int dy)
    {
        this.dx_AdjustedRightToLeftImageAnimation = dx;
        this.dy_AdjustedRightToLeftImageAnimation = dy;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        RightToLeftImageAnimation::paintXY(graphics, x + this.dx_AdjustedRightToLeftImageAnimation, y + this.dy_AdjustedRightToLeftImageAnimation);
    }
}

