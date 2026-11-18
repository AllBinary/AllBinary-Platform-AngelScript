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

class ImageArraySpecialAnimation : ImageArrayAnimation, SpecialAnimationInterface
{
    TimeDelayHelper@ timeDelayHelper_ImageArraySpecialAnimation;
    int loopCount_ImageArraySpecialAnimation;
    int loopCountTotal_ImageArraySpecialAnimation;

    // Java field initializers run after the super constructor
    void jfields_ImageArraySpecialAnimation()
    {
    @this.timeDelayHelper_ImageArraySpecialAnimation = TimeDelayHelper().jinit_TimeDelayHelper(270);
    this.loopCount_ImageArraySpecialAnimation = 0;
    this.loopCountTotal_ImageArraySpecialAnimation = 1;
    }
    

    ImageArraySpecialAnimation@ jinit_ImageArraySpecialAnimation(Image@[]@ imageArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_ImageArrayAnimation(imageArray, animationBehavior);
        this.jfields_ImageArraySpecialAnimation();
        this.reset();
        return this;
    }
    

    int getLoopCount()
    {
        return this.loopCount_ImageArraySpecialAnimation;
    }
    

    void setLastFrame()
    {
        this.circularIndexUtil.setIndex(this.circularIndexUtil.getSize() - 1);
    }
    

    void reset()
    {
        this.setFrame(this.getSize() - 1);
        this.loopCount_ImageArraySpecialAnimation = 0;
    }
    

    void nextFrame()
    {
        if (this.getFrame() > 0) {
            if (this.timeDelayHelper_ImageArraySpecialAnimation.isTime(GameTickTimeDelayHelperFactory::getInstance().startTime)) {
                this.previousFrame();
                if (this.getFrame() == 0) {
                    this.loopCount_ImageArraySpecialAnimation++;
                }
            }
        }
    }
    

    bool isComplete()
    {
        if (this.loopCount_ImageArraySpecialAnimation < this.loopCountTotal_ImageArraySpecialAnimation || this.getFrame() != 0) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        x = DisplayInfoSingleton::getInstance().getLastHalfWidth() - (this.getImage(this.circularIndexUtil.getIndex()).getWidth() >>> 1);
        y = 5;
        ImageArrayAnimation::paintXY(graphics, x, y);
    }
}

