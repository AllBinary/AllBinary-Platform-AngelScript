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

class ImageArrayBaseRotationAnimation : RotationAnimation
{
    ImageModifierUtil@ imageModifierUtil_ImageArrayBaseRotationAnimation;
    Image@[]@ originalImageArray_ImageArrayBaseRotationAnimation;
    Image@[]@ imageArray_ImageArrayBaseRotationAnimation;
    Image@ currentImage_ImageArrayBaseRotationAnimation;
    int totalFrames_ImageArrayBaseRotationAnimation;
    int anchor_ImageArrayBaseRotationAnimation;

    // Java field initializers run after the super constructor
    void jfields_ImageArrayBaseRotationAnimation()
    {
    @this.imageModifierUtil_ImageArrayBaseRotationAnimation = ImageModifierUtil::getInstanceOrCreate();
    
    @this.imageArray_ImageArrayBaseRotationAnimation = NullImage::NULL_IMAGE_ARRAY;
    
    
    this.anchor_ImageArrayBaseRotationAnimation = Anchor::TOP_LEFT;
    }
    

    ImageArrayBaseRotationAnimation@ jinit_ImageArrayBaseRotationAnimation(Image@[]@ originalImageArray, AngleInfo@ angleInfo, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RotationAnimation(angleInfo, CircularIndexUtil::createInstance(360 / int(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
        this.jfields_ImageArrayBaseRotationAnimation();
        @this.originalImageArray_ImageArrayBaseRotationAnimation = originalImageArray;
        this.setImageArray(this.imageModifierUtil_ImageArrayBaseRotationAnimation.getImageArray(originalImageArray));
        @this.currentImage_ImageArrayBaseRotationAnimation = this.imageArray_ImageArrayBaseRotationAnimation[this.circularIndexUtil.getIndex()];
        return this;
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    void setAlpha(int alpha)
    {
        if (this.alphaP != alpha) {
            RotationAnimation::setAlpha(alpha);
            this.imageModifierUtil_ImageArrayBaseRotationAnimation.reset();
            int index = this.circularIndexUtil.getIndex();
            this.imageModifierUtil_ImageArrayBaseRotationAnimation.setAlpha(this.originalImageArray_ImageArrayBaseRotationAnimation[index], this.imageArray_ImageArrayBaseRotationAnimation[index], index, this.alphaP);
        }
    }
    

    void nextRotation()
    {
        RotationAnimation::nextRotation();
        int index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil_ImageArrayBaseRotationAnimation.setAlpha(this.originalImageArray_ImageArrayBaseRotationAnimation[index], this.imageArray_ImageArrayBaseRotationAnimation[index], index, this.alphaP);
        @this.currentImage_ImageArrayBaseRotationAnimation = this.imageArray_ImageArrayBaseRotationAnimation[index];
    }
    

    void previousRotation()
    {
        RotationAnimation::previousRotation();
        int index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil_ImageArrayBaseRotationAnimation.setAlpha(this.originalImageArray_ImageArrayBaseRotationAnimation[index], this.imageArray_ImageArrayBaseRotationAnimation[index], index, this.alphaP);
        @this.currentImage_ImageArrayBaseRotationAnimation = this.imageArray_ImageArrayBaseRotationAnimation[index];
    }
    

    void setFrame(int index2)
    {
        RotationAnimation::setFrame(index2);
        int index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil_ImageArrayBaseRotationAnimation.setAlpha(this.originalImageArray_ImageArrayBaseRotationAnimation[index], this.imageArray_ImageArrayBaseRotationAnimation[index], index, this.alphaP);
        @this.currentImage_ImageArrayBaseRotationAnimation = this.imageArray_ImageArrayBaseRotationAnimation[index];
    }
    

    void setSequence(int[]@ sequence)
    {
    }
    

    int[]@ getSequence()
    {
        return PrimitiveIntUtil::getArrayInstance();
    }
    

    void setImageArray(Image@[]@ imageArray)
    {
        @this.imageArray_ImageArrayBaseRotationAnimation = imageArray;
        this.totalFrames_ImageArrayBaseRotationAnimation = int(imageArray.length());
        @this.circularIndexUtil = CircularIndexUtil::createInstance(this.totalFrames_ImageArrayBaseRotationAnimation);
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        graphics.drawImage(this.currentImage_ImageArrayBaseRotationAnimation, x, y, this.anchor_ImageArrayBaseRotationAnimation);
    }
    

    void close()
    {
        DisposalUtil@ disposalUtil = DisposalUtil::getInstance();
        int size2 = int(this.imageArray_ImageArrayBaseRotationAnimation.length());
        for (int index = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray_ImageArrayBaseRotationAnimation[index]);
        }
        int size = int(this.originalImageArray_ImageArrayBaseRotationAnimation.length());
        for (int index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray_ImageArrayBaseRotationAnimation[index]);
        }
        disposalUtil.disposeImage(this.currentImage_ImageArrayBaseRotationAnimation);
    }
    

    void finalize()
    {
        DisposalUtil@ disposalUtil = DisposalUtil::getInstance();
        int size2 = int(this.imageArray_ImageArrayBaseRotationAnimation.length());
        for (int index = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray_ImageArrayBaseRotationAnimation[index]);
        }
        int size = int(this.originalImageArray_ImageArrayBaseRotationAnimation.length());
        for (int index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray_ImageArrayBaseRotationAnimation[index]);
        }
        disposalUtil.disposeImage(this.currentImage_ImageArrayBaseRotationAnimation);
    }
}

