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
// package org.allbinary.animation.caption

class CaptionAnimation : Animation
{
    Animation@ animationInterface_CaptionAnimation;
    Animation@ overlayAnimationInterface_CaptionAnimation;
    int captionDx_CaptionAnimation;
    int captionDy_CaptionAnimation;
    int dx_CaptionAnimation;
    int dy_CaptionAnimation;
    

    CaptionAnimation@ jinit_CaptionAnimation(Animation@ animationInterface, Animation@ overlayAnimationInterface, int captionDx, int captionDy, int dx, int dy)
    {
        this.jinit_Animation();
        @this.animationInterface_CaptionAnimation = animationInterface;
        @this.overlayAnimationInterface_CaptionAnimation = overlayAnimationInterface;
        this.captionDx_CaptionAnimation = captionDx;
        this.captionDy_CaptionAnimation = captionDy;
        this.dx_CaptionAnimation = dx;
        this.dy_CaptionAnimation = dy;
        return this;
    }
    

    void nextFrame()
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.animationInterface_CaptionAnimation.paintXY(graphics, x + this.captionDx_CaptionAnimation, y + this.captionDy_CaptionAnimation);
        this.overlayAnimationInterface_CaptionAnimation.paintXY(graphics, x + this.captionDx_CaptionAnimation + this.dx_CaptionAnimation, y + this.captionDy_CaptionAnimation + this.dy_CaptionAnimation);
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
        this.animationInterface_CaptionAnimation.paintThreedXYZ(graphics, x + this.captionDx_CaptionAnimation, y + this.captionDy_CaptionAnimation, z);
        this.overlayAnimationInterface_CaptionAnimation.paintThreedXYZ(graphics, x + this.captionDx_CaptionAnimation + this.dx_CaptionAnimation, y + this.captionDy_CaptionAnimation + this.dy_CaptionAnimation, z);
    }
}

