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
// package org.allbinary.animation.image.sprite

class HackRotationSpriteIndexedAnimation : RotationAnimation
{
    Sprite@ sprite;
    Image@ image_HackRotationSpriteIndexedAnimation;
    

    HackRotationSpriteIndexedAnimation@ jinit_HackRotationSpriteIndexedAnimation(Sprite@ sprite, Image@ image, AngleInfo@ angleInfo, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RotationAnimation(angleInfo, CircularIndexUtil::createInstance(360 / int(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
        @this.sprite = sprite;
        @this.image_HackRotationSpriteIndexedAnimation = image;
        return this;
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    void paintFrame(Graphics@ g, int frame, int x, int y)
    {
        this.setFrame(frame);
        this.paintXY(g, x, y);
    }
    

    void paintXY(Graphics@ g, int x, int y)
    {
        this.sprite.setPosition(x, y);
        this.paint(g);
    }
    

    void paint(Graphics@ g)
    {
        this.sprite.paint(g);
    }
    

    void nextRotation()
    {
        this.sprite.nextFrame();
    }
    

    void previousRotation()
    {
        this.sprite.prevFrame();
    }
    

    int getSize()
    {
        return this.sprite.getRawFrameCount();
    }
    

    void setFrame(int frame)
    {
        this.sprite.setFrame(frame);
    }
    

    int getFrame()
    {
        return this.sprite.getFrame();
    }
    

    void setSequence(int[]@ sequence)
    {
    }
    

    int[]@ getSequence()
    {
        return PrimitiveIntUtil::getArrayInstance();
    }
}

