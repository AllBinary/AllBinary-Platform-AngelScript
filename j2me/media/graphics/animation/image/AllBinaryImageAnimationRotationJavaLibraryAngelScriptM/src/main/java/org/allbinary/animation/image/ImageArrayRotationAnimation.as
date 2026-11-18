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

class ImageArrayRotationAnimation : ImageArrayBaseRotationAnimation
{
    int expectedTotalFrames_ImageArrayRotationAnimation;
    

    ImageArrayRotationAnimation@ jinit_ImageArrayRotationAnimation(Image@[]@ imageArray, AngleInfo@ angleInfo, int totalAngle, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageArrayBaseRotationAnimation(imageArray, angleInfo, animationBehavior);
        this.initImageArray(imageArray, angleInfo, totalAngle);
        return this;
    }
    

    void initImageArray(Image@[]@ imageArray, AngleInfo@ angleInfo, int totalAngle)
    {
        this.expectedTotalFrames_ImageArrayRotationAnimation = totalAngle / int(this.angleInfo.getAngleIncrementInfo().getAngleIncrement());
        this.angleInfo.adjustAngle(0);
        if (this.expectedTotalFrames_ImageArrayRotationAnimation != this.getSize()) {
            jthrow(Exception().jinit_Exception("Wrong Number of Frames"));
        }
    }
    

    void setImageArray(Image@[]@ imageArray)
    {
        ImageArrayBaseRotationAnimation::setImageArray(imageArray);
        this.angleInfo.adjustAngle(0);
    }
}

namespace ImageArrayRotationAnimation
{
    

    ImageArrayRotationAnimation@ createAnimation(JObject@ anyType, AnimationBehavior@ animationBehavior)
    {
        ImageArrayRotationAnimationInfo@ imageRotationAnimationInfo = cast<ImageArrayRotationAnimationInfo>(anyType);
        return ImageArrayRotationAnimation().jinit_ImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior);
    }
}

