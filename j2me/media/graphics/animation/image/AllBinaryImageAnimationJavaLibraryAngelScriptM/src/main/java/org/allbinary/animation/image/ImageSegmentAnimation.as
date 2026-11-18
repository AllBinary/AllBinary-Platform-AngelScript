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

class ImageSegmentAnimation : ImageAnimation
{
    int startX_ImageSegmentAnimation;
    int startY_ImageSegmentAnimation;
    int drawWidth_ImageSegmentAnimation;
    int drawHeight_ImageSegmentAnimation;
    CircularIndexUtil@ circularIndexUtil_ImageSegmentAnimation;
    int[]@ sequenceArray_ImageSegmentAnimation;
    

    ImageSegmentAnimation@ jinit_ImageSegmentAnimation(Image@ image, int[]@ sequenceArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageAnimation(image, animationBehavior);
        this.startX_ImageSegmentAnimation = 0;
        this.startY_ImageSegmentAnimation = 0;
        this.drawWidth_ImageSegmentAnimation = this.getImage().getWidth();
        this.drawHeight_ImageSegmentAnimation = this.getImage().getHeight();
        @this.circularIndexUtil_ImageSegmentAnimation = CircularIndexUtil::createInstance(this.drawHeight_ImageSegmentAnimation);
        @this.sequenceArray_ImageSegmentAnimation = sequenceArray;
        return this;
    }
    

    void nextFrame()
    {
        this.circularIndexUtil_ImageSegmentAnimation.next();
    }
    

    void previousFrame()
    {
        this.circularIndexUtil_ImageSegmentAnimation.previous();
    }
    

    void setFrame(int index)
    {
        this.circularIndexUtil_ImageSegmentAnimation.setIndex(index);
    }
    

    int getFrame()
    {
        return this.circularIndexUtil_ImageSegmentAnimation.getIndex();
    }
    

    int getSize()
    {
        return this.circularIndexUtil_ImageSegmentAnimation.getSize();
    }
    

    void setSequence(int[]@ sequenceArray)
    {
        @this.sequenceArray_ImageSegmentAnimation = sequenceArray;
    }
    

    int[]@ getSequence()
    {
        return this.sequenceArray_ImageSegmentAnimation;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
    }
    

    int getStartX()
    {
        return this.startX_ImageSegmentAnimation;
    }
    

    void setStartX(int startX)
    {
        this.startX_ImageSegmentAnimation = startX;
    }
    

    int getStartY()
    {
        return this.startY_ImageSegmentAnimation;
    }
    

    void setStartY(int startY)
    {
        this.startY_ImageSegmentAnimation = startY;
    }
    

    int getDrawWidth()
    {
        return this.drawWidth_ImageSegmentAnimation;
    }
    

    void setDrawWidth(int drawWidth)
    {
        this.drawWidth_ImageSegmentAnimation = drawWidth;
    }
    

    int getDrawHeight()
    {
        return this.drawHeight_ImageSegmentAnimation;
    }
    

    void setDrawHeight(int drawHeight)
    {
        this.drawHeight_ImageSegmentAnimation = drawHeight;
    }
}

