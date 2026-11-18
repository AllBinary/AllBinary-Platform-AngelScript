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

class ImageAnimation : IndexedAnimation
{
    Image@ image_ImageAnimation;
    int anchor_ImageAnimation;

    // Java field initializers run after the super constructor
    void jfields_ImageAnimation()
    {
    
    this.anchor_ImageAnimation = Anchor::TOP_LEFT;
    }
    

    ImageAnimation@ jinit_ImageAnimation(Image@ image, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        this.jfields_ImageAnimation();
        @this.image_ImageAnimation = image;
        return this;
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    void nextFrame()
    {
    }
    

    void previousFrame()
    {
    }
    

    void setFrame(int index)
    {
    }
    

    int getFrame()
    {
        return 0;
    }
    

    int getSize()
    {
        return 1;
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
        graphics.drawImage(this.image_ImageAnimation, x, y, this.anchor_ImageAnimation);
    }
    

    Image@ getImage()
    {
        return this.image_ImageAnimation;
    }
    

    void close()
    {
        DisposalUtil::getInstance().disposeImage(this.image_ImageAnimation);
    }
    

    void finalize()
    {
        DisposalUtil::getInstance().disposeImage(this.image_ImageAnimation);
    }
}

