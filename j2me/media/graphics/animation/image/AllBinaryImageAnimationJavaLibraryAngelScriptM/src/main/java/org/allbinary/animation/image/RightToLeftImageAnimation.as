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

class RightToLeftImageAnimation : ImageSegmentAnimation
{
    int startWidth_RightToLeftImageAnimation;
    int currentWidth_RightToLeftImageAnimation;
    int anchor_RightToLeftImageAnimation;

    // Java field initializers run after the super constructor
    void jfields_RightToLeftImageAnimation()
    {
    
    
    this.anchor_RightToLeftImageAnimation = Anchor::TOP_LEFT;
    }
    

    RightToLeftImageAnimation@ jinit_RightToLeftImageAnimation(Image@ image, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageSegmentAnimation(image, PrimitiveIntUtil::getArrayInstance(), animationBehavior);
        this.jfields_RightToLeftImageAnimation();
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
        this.startWidth_RightToLeftImageAnimation = this.getDrawWidth() * this.getFrame() / this.getSize();
        this.currentWidth_RightToLeftImageAnimation = this.getDrawWidth() - this.startWidth_RightToLeftImageAnimation;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        graphics.drawRegion(this.getImage(), this.startWidth_RightToLeftImageAnimation, this.getStartY(), this.currentWidth_RightToLeftImageAnimation, this.getDrawHeight(), Sprite::TRANS_NONE, x + this.startWidth_RightToLeftImageAnimation, y, this.anchor_RightToLeftImageAnimation);
    }
}

