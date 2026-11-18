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

class BottomToTopImageAnimation : ImageSegmentAnimation
{
    int startHeight_BottomToTopImageAnimation;
    int currentHeight_BottomToTopImageAnimation;
    int anchor_BottomToTopImageAnimation;

    // Java field initializers run after the super constructor
    void jfields_BottomToTopImageAnimation()
    {
    
    
    this.anchor_BottomToTopImageAnimation = Anchor::TOP_LEFT;
    }
    

    BottomToTopImageAnimation@ jinit_BottomToTopImageAnimation(Image@ image, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageSegmentAnimation(image, PrimitiveIntUtil::getArrayInstance(), animationBehavior);
        this.jfields_BottomToTopImageAnimation();
        this.setFrame(this.getSize() - 1);
        return this;
    }
    

    void nextFrame()
    {
        ImageSegmentAnimation::previousFrame();
        this.update();
    }
    

    void previousFrame()
    {
        ImageSegmentAnimation::nextFrame();
        this.update();
    }
    

    void setFrame(int index)
    {
        ImageSegmentAnimation::setFrame(index);
        this.update();
    }
    

    void update()
    {
        this.startHeight_BottomToTopImageAnimation = this.getDrawHeight() * this.getFrame() / this.getSize();
        this.currentHeight_BottomToTopImageAnimation = this.getDrawHeight() - this.startHeight_BottomToTopImageAnimation;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.startHeight_BottomToTopImageAnimation, this.getDrawWidth(), this.currentHeight_BottomToTopImageAnimation, Sprite::TRANS_NONE, x, y + this.startHeight_BottomToTopImageAnimation, this.anchor_BottomToTopImageAnimation);
    }
}

