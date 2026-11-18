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

class TimedVectorAnimation : VectorAnimation
{
    TimeDelayHelper@ timeElapsedHelper_TimedVectorAnimation;

    // Java field initializers run after the super constructor
    void jfields_TimedVectorAnimation()
    {
    @this.timeElapsedHelper_TimedVectorAnimation = TimeDelayHelper().jinit_TimeDelayHelper(200);
    }
    

    TimedVectorAnimation@ jinit_TimedVectorAnimation(int[]@[]@[]@ currentPoints, BasicColor@ basicColor, AnimationBehavior@ animationBehavior)
    {
        this.jinit_VectorAnimation(currentPoints, basicColor, animationBehavior);
        this.jfields_TimedVectorAnimation();
        return this;
    }
    

    void nextFrame()
    {
        if (this.timeElapsedHelper_TimedVectorAnimation.isTime(GameTickTimeDelayHelperFactory::getInstance().startTime)) {
            VectorAnimation::nextFrame();
        }
    }
}

