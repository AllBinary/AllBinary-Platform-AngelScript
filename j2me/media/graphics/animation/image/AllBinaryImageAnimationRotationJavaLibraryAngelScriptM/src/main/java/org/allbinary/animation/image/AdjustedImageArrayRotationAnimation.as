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

//TWB - Adjustments should be done in the resource creation and not at the animation level
class AdjustedImageArrayRotationAnimation : ImageArrayRotationAnimation
{
    int dx_AdjustedImageArrayRotationAnimation;
    int dy_AdjustedImageArrayRotationAnimation;
    

    AdjustedImageArrayRotationAnimation@ jinit_AdjustedImageArrayRotationAnimation(Image@[]@ imageArray, AngleInfo@ angleInfo, int totalAngle, int dx, int dy, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, animationBehavior);
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
        ImageArrayRotationAnimation::paintXY(graphics, x + this.dx_AdjustedImageArrayRotationAnimation, y + this.dy_AdjustedImageArrayRotationAnimation);
    }
    

    void setDx(int dx)
    {
        this.dx_AdjustedImageArrayRotationAnimation = dx;
    }
    

    int getDx()
    {
        return this.dx_AdjustedImageArrayRotationAnimation;
    }
    

    void setDy(int dy)
    {
        this.dy_AdjustedImageArrayRotationAnimation = dy;
    }
    

    int getDy()
    {
        return this.dy_AdjustedImageArrayRotationAnimation;
    }
}

namespace AdjustedImageArrayRotationAnimation
{
    

    AdjustedImageArrayRotationAnimation@ createAdjustedImageArrayRotationAnimationInfo(JObject@ anyType, AnimationBehavior@ animationBehavior)
    {
        ImageArrayRotationAnimationInfo@ imageRotationAnimationInfo = cast<ImageArrayRotationAnimationInfo>(anyType);
        return AdjustedImageArrayRotationAnimation().jinit_AdjustedImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), imageRotationAnimationInfo.getDx(), imageRotationAnimationInfo.getDy(), animationBehavior);
    }
    

    AdjustedImageArrayRotationAnimation@ createAnimation(Image@[]@ imageArray, AngleInfo@ angleInfo, int totalAngle, AnimationBehavior@ animationBehavior)
    {
        return AdjustedImageArrayRotationAnimation().jinit_AdjustedImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, -(imageArray[0].getWidth() >>> 2), -(imageArray[0].getHeight() >>> 2), animationBehavior);
    }
}

