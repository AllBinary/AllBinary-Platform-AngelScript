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

class ImageArrayAnimation : IndexedAnimation
{
    Image@[]@ imageArray_ImageArrayAnimation;
    int totalFrames_ImageArrayAnimation;
    CircularIndexUtil@ circularIndexUtil;
    int anchor_ImageArrayAnimation;

    // Java field initializers run after the super constructor
    void jfields_ImageArrayAnimation()
    {
    @this.imageArray_ImageArrayAnimation = NullImage::NULL_IMAGE_ARRAY;
    
    @this.circularIndexUtil = CircularIndexUtil::NULL_CIRCULAR_INDEX_UTIL;
    this.anchor_ImageArrayAnimation = Anchor::TOP_LEFT;
    }
    

    ImageArrayAnimation@ jinit_ImageArrayAnimation(Image@[]@ imageArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        this.jfields_ImageArrayAnimation();
        this.setImageArray(imageArray);
        return this;
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    void nextFrame()
    {
        this.circularIndexUtil.next();
    }
    

    void previousFrame()
    {
        this.circularIndexUtil.previous();
    }
    

    void setFrame(int index)
    {
        this.circularIndexUtil.setIndex(index);
    }
    

    int getFrame()
    {
        return this.circularIndexUtil.getIndex();
    }
    

    int getSize()
    {
        return this.totalFrames_ImageArrayAnimation;
    }
    

    void setSequence(int[]@ sequence)
    {
    }
    

    int[]@ getSequence()
    {
        return PrimitiveIntUtil::getArrayInstance();
    }
    

    Image@ getImage(int index)
    {
        return this.imageArray_ImageArrayAnimation[index];
    }
    

    Image@[]@ getImageArray()
    {
        return this.imageArray_ImageArrayAnimation;
    }
    

    void setImageArray(Image@[]@ imageArray)
    {
        @this.imageArray_ImageArrayAnimation = imageArray;
        this.totalFrames_ImageArrayAnimation = int(imageArray.length());
        @this.circularIndexUtil = CircularIndexUtil::createInstance(this.totalFrames_ImageArrayAnimation);
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        graphics.drawImage(this.imageArray_ImageArrayAnimation[this.circularIndexUtil.getIndex()], x, y, this.anchor_ImageArrayAnimation);
    }
}

