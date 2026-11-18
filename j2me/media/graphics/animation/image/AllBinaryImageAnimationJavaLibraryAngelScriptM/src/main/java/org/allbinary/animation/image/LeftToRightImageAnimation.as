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

class LeftToRightImageAnimation : ImageSegmentAnimation
{
    int currentWidth_LeftToRightImageAnimation;
    int anchor_LeftToRightImageAnimation;

    // Java field initializers run after the super constructor
    void jfields_LeftToRightImageAnimation()
    {
    
    this.anchor_LeftToRightImageAnimation = Anchor::TOP_LEFT;
    }
    

    LeftToRightImageAnimation@ jinit_LeftToRightImageAnimation(Image@ image, int[]@ sequenceArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageSegmentAnimation(image, sequenceArray, animationBehavior);
        this.jfields_LeftToRightImageAnimation();
        this.currentWidth_LeftToRightImageAnimation = 0;
        if (this.getSequence()[0] == -1) {
            this.setFrame(this.getSize() - 1);
        }
        return this;
    }
    

    void nextFrame()
    {
        if (this.getSequence()[0] == -1) {
            ImageSegmentAnimation::previousFrame();
        } else {
            ImageSegmentAnimation::nextFrame();
        }
        this.update();
    }
    

    void previousFrame()
    {
        if (this.getSequence()[0] == -1) {
            ImageSegmentAnimation::nextFrame();
        } else {
            ImageSegmentAnimation::previousFrame();
        }
        this.update();
    }
    

    void setFrame(int index)
    {
        ImageSegmentAnimation::setFrame(index);
        this.update();
    }
    

    void update()
    {
        this.currentWidth_LeftToRightImageAnimation = this.getDrawWidth() * this.getFrame() / this.getSize();
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.currentWidth_LeftToRightImageAnimation, this.getDrawHeight(), Sprite::TRANS_NONE, x, y, this.anchor_LeftToRightImageAnimation);
    }
}

