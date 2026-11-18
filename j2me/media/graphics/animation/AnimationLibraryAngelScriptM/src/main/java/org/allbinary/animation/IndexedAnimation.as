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
// package org.allbinary.animation

class IndexedAnimation : Animation, IndexedAnimationInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    AnimationBehavior@ animationBehaviorP;

    // Java field initializers run after the super constructor
    void jfields_IndexedAnimation()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    }
    

    IndexedAnimation@ jinit_IndexedAnimation(AnimationBehavior@ animationBehavior)
    {
        this.jinit_Animation();
        this.jfields_IndexedAnimation();
        @this.animationBehaviorP = animationBehavior;
        return this;
    }
    

    AnimationBehavior@ getAnimationBehavior()
    {
        return this.animationBehaviorP;
    }
    

    void reset()
    {
        this.animationBehaviorP.reset();
        this.setFrame(0);
    }
    

    void setFrame(int index)
    {
    }
    

    int getFrame()
    {
        return 0;
    }
    

    int getAnimationSize()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return 0;
    }
    

    int getSize()
    {
        return 0;
    }
    

    void previousFrame()
    {
    }
    

    bool isLastFrame()
    {
        if (this.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void setSequence(int[]@ sequence)
    {
    }
    

    int[]@ getSequence()
    {
        return PrimitiveIntUtil::getArrayInstance();
    }
    

    void setState(IndexedAnimation@ indexedAnimation)
    {
        this.setFrame(indexedAnimation.getFrame());
        this.setDx(indexedAnimation.getDx());
        this.setDy(indexedAnimation.getDy());
    }
    

    int getWidth()
    {
        return 0;
    }
    

    int getHeight()
    {
        return 0;
    }
}

