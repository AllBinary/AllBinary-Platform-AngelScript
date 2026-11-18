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

class ImageBaseRotationAnimation : RotationAnimation
{
    Image@ image_ImageBaseRotationAnimation;
    int anchor;

    // Java field initializers run after the super constructor
    void jfields_ImageBaseRotationAnimation()
    {
    
    this.anchor = Anchor::TOP_LEFT;
    }
    

    ImageBaseRotationAnimation@ jinit_ImageBaseRotationAnimation(Image@ image, AngleInfo@ angleInfo, int16 totalAngle, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RotationAnimation(angleInfo, CircularIndexUtil::createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior);
        this.jfields_ImageBaseRotationAnimation();
        @this.image_ImageBaseRotationAnimation = image;
        return this;
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    void setSequence(int[]@ sequence)
    {
    }
    

    int[]@ getSequence()
    {
        return PrimitiveIntUtil::getArrayInstance();
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        graphics.drawImage(this.image_ImageBaseRotationAnimation, x, y, this.anchor);
    }
    

    Image@ getImage()
    {
        return this.image_ImageBaseRotationAnimation;
    }
    

    int getWidth()
    {
        return this.image_ImageBaseRotationAnimation.getWidth();
    }
    

    int getHeight()
    {
        return this.image_ImageBaseRotationAnimation.getHeight();
    }
    

    void close()
    {
        DisposalUtil::getInstance().disposeImage(this.image_ImageBaseRotationAnimation);
    }
    

    void finalize()
    {
        DisposalUtil::getInstance().disposeImage(this.image_ImageBaseRotationAnimation);
    }
}

