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

class AdjustedLeftToRightImageAnimation : LeftToRightImageAnimation
{
    int dx_AdjustedLeftToRightImageAnimation;
    int dy_AdjustedLeftToRightImageAnimation;
    

    AdjustedLeftToRightImageAnimation@ jinit_AdjustedLeftToRightImageAnimation(Image@ image, int[]@ sequenceArray, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_LeftToRightImageAnimation(image, sequenceArray, animationBehavior);
        this.init(dx, dy);
        return this;
    }
    

    void init(int dx, int dy)
    {
        this.dx_AdjustedLeftToRightImageAnimation = dx;
        this.dy_AdjustedLeftToRightImageAnimation = dy;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        LeftToRightImageAnimation::paintXY(graphics, x + this.dx_AdjustedLeftToRightImageAnimation, y + this.dy_AdjustedLeftToRightImageAnimation);
    }
}

