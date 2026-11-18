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
// package org.allbinary.animation.caption

class CaptionIndexedAnimation : IndexedAnimation
{
    Animation@ animationInterface_CaptionIndexedAnimation;
    IndexedAnimation@ movieIndexedAnimationInterface_CaptionIndexedAnimation;
    int captionDx_CaptionIndexedAnimation;
    int captionDy_CaptionIndexedAnimation;
    int dx_CaptionIndexedAnimation;
    int dy_CaptionIndexedAnimation;
    int time_CaptionIndexedAnimation;
    AllBinaryEventObject@ END_EVENT_CaptionIndexedAnimation;
    TimeDelayHelper@ timeDelayHelper_CaptionIndexedAnimation;
    Player@ player_CaptionIndexedAnimation;
    

    CaptionIndexedAnimation@ jinit_CaptionIndexedAnimation(Animation@ animationInterface, IndexedAnimation@ movieIndexedAnimationInterface, Player@ player, int captionDx, int captionDy, int dx, int dy, int time, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        @this.animationInterface_CaptionIndexedAnimation = animationInterface;
        @this.movieIndexedAnimationInterface_CaptionIndexedAnimation = movieIndexedAnimationInterface;
        this.captionDx_CaptionIndexedAnimation = captionDx;
        this.captionDy_CaptionIndexedAnimation = captionDy;
        this.dx_CaptionIndexedAnimation = dx;
        this.dy_CaptionIndexedAnimation = dy;
        this.time_CaptionIndexedAnimation = time;
        @this.END_EVENT_CaptionIndexedAnimation = AllBinaryEventObject().jinit_AllBinaryEventObject(this);
        int timePerFrame = this.time_CaptionIndexedAnimation / this.getSize();
        @this.timeDelayHelper_CaptionIndexedAnimation = TimeDelayHelper().jinit_TimeDelayHelper(timePerFrame);
        @this.player_CaptionIndexedAnimation = player;
        this.player_CaptionIndexedAnimation.start();
        return this;
    }
    

    void nextFrame()
    {
        if (this.timeDelayHelper_CaptionIndexedAnimation.isTime(GameTickTimeDelayHelperFactory::getInstance().startTime)) {
            this.movieIndexedAnimationInterface_CaptionIndexedAnimation.nextFrame();
        }
        if (this.isLastFrame()) {
            AnimationEventHandler::getInstance().fireEvent(this.END_EVENT_CaptionIndexedAnimation);
        }
    }
    

    bool isLastFrame()
    {
        if (this.movieIndexedAnimationInterface_CaptionIndexedAnimation.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void previousFrame()
    {
        this.movieIndexedAnimationInterface_CaptionIndexedAnimation.previousFrame();
    }
    

    void setFrame(int index)
    {
        this.movieIndexedAnimationInterface_CaptionIndexedAnimation.setFrame(index);
    }
    

    int getFrame()
    {
        return this.movieIndexedAnimationInterface_CaptionIndexedAnimation.getFrame();
    }
    

    int getSize()
    {
        return this.movieIndexedAnimationInterface_CaptionIndexedAnimation.getSize();
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
        this.animationInterface_CaptionIndexedAnimation.paintXY(graphics, x + this.captionDx_CaptionIndexedAnimation, y + this.captionDy_CaptionIndexedAnimation);
        this.movieIndexedAnimationInterface_CaptionIndexedAnimation.paintXY(graphics, x + this.captionDx_CaptionIndexedAnimation + this.dx_CaptionIndexedAnimation, y + this.captionDy_CaptionIndexedAnimation + this.dy_CaptionIndexedAnimation);
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
        this.animationInterface_CaptionIndexedAnimation.paintThreedXYZ(graphics, x + this.captionDx_CaptionIndexedAnimation, y + this.captionDy_CaptionIndexedAnimation, z);
        this.movieIndexedAnimationInterface_CaptionIndexedAnimation.paintThreedXYZ(graphics, x + this.captionDx_CaptionIndexedAnimation + this.dx_CaptionIndexedAnimation, y + this.captionDy_CaptionIndexedAnimation + this.dy_CaptionIndexedAnimation, z);
    }
}

