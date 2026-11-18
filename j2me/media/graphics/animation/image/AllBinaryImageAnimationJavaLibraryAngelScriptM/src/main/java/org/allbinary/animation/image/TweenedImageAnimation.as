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

class TweenedImageAnimation : IndexedAnimation
{
    Image@ image_TweenedImageAnimation;
    int dx_TweenedImageAnimation;
    int dy_TweenedImageAnimation;
    int totalFrames_TweenedImageAnimation;
    CircularIndexUtil@ circularIndexUtil;
    int anchor_TweenedImageAnimation;

    // Java field initializers run after the super constructor
    void jfields_TweenedImageAnimation()
    {
    
    
    
    
    
    this.anchor_TweenedImageAnimation = Anchor::TOP_LEFT;
    }
    

    TweenedImageAnimation@ jinit_TweenedImageAnimation(Image@ image, int dx, int dy, int totalFrames, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        this.jfields_TweenedImageAnimation();
        @this.image_TweenedImageAnimation = image;
        this.dx_TweenedImageAnimation = dx;
        this.dy_TweenedImageAnimation = dy;
        this.totalFrames_TweenedImageAnimation = totalFrames;
        @this.circularIndexUtil = CircularIndexUtil::createInstance(this.totalFrames_TweenedImageAnimation);
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
        return this.totalFrames_TweenedImageAnimation;
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
        int frame = this.getFrame();
        int currentX = this.dx_TweenedImageAnimation * frame;
        int currentY = this.dy_TweenedImageAnimation * frame;
        graphics.drawImage(this.image_TweenedImageAnimation, x + currentX, y + currentY, this.anchor_TweenedImageAnimation);
    }
    

    void close()
    {
        DisposalUtil::getInstance().disposeImage(this.image_TweenedImageAnimation);
    }
    

    void finalize()
    {
        DisposalUtil::getInstance().disposeImage(this.image_TweenedImageAnimation);
    }
}

