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

class SpriteIndexedAnimation : IndexedAnimation, ColorCompositeInterface
{
    Sprite@ sprite;
    Image@ image;
    BasicColor@[]@ basicColorArray_SpriteIndexedAnimation;
    

    SpriteIndexedAnimation@ jinit_SpriteIndexedAnimation(Sprite@ sprite, Image@ image, BasicColor@[]@ basicColorArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        @this.sprite = sprite;
        @this.image = image;
        @this.basicColorArray_SpriteIndexedAnimation = basicColorArray;
        if (int(this.basicColorArray_SpriteIndexedAnimation.length()) != 0 && this.getSize() != int(this.basicColorArray_SpriteIndexedAnimation.length())) {
            jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().TOTAL_LABEL).appendint(this.getSize()).append("!=").appendint(int(this.basicColorArray_SpriteIndexedAnimation.length())).toString()));
        }
        return this;
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        for (int index = 0; index < int(this.basicColorArray_SpriteIndexedAnimation.length()); index++) {
            if (basicColor is this.basicColorArray_SpriteIndexedAnimation[index]) {
                this.setFrame(index);
                break;
            }
        }
    }
    

    BasicColor@ getBasicColorP()
    {
        if (int(this.basicColorArray_SpriteIndexedAnimation.length()) < this.getFrame()) {
            return this.basicColorArray_SpriteIndexedAnimation[this.getFrame()];
        } else {
            return BasicColorFactory::getInstance().WHITE;
        }
        return null;
    }
    

    void paintFrame(Graphics@ graphics, int frame, int x, int y)
    {
        this.setFrame(frame);
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    void paint(Graphics@ graphics)
    {
        this.sprite.paint(graphics);
    }
    

    void nextFrame()
    {
        this.sprite.nextFrame();
    }
    

    void previousFrame()
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
    

    bool isLastFrame()
    {
        if (this.sprite.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    int getLastFrame()
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
    

    void close()
    {
    }
    

    void finalize()
    {
    }
}

