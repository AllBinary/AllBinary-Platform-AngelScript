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
// package org.allbinary.animation.special

class TitleAnimation : SpecialAnimation
{
    ABSystemWrapper@ systemWrapper;
    float deltaX;
    float deltaY;
    float deltaZ;
    BasicColor@[]@ basicColorArray;
    int[]@ dxArray;
    int[]@ dyArray;
    int widthP;
    IndexedAnimation@[]@ animationInterfaceArray;
    int sizeP;
    int y;
    int64 lastFrameStartTime_TitleAnimation;
    DisplayInfoSingleton@ displayInfoSingleton_TitleAnimation;
    BasicColor@ CLEAR_COLOR;

    // Java field initializers run after the super constructor
    void jfields_TitleAnimation()
    {
    @this.systemWrapper = ABSystemWrapper::getInstance();
    
    
    
    
    
    
    
    
    
    
    
    @this.displayInfoSingleton_TitleAnimation = DisplayInfoSingleton::getInstance();
    @this.CLEAR_COLOR = BasicColorFactory::getInstance().CLEAR_COLOR;
    }
    

    TitleAnimation@ jinit_TitleAnimation(IndexedAnimation@[]@ animationInterfaceArray, BasicColor@[]@ basicColorArray, int[]@ dxArray, int[]@ dyArray, int y, int width, AnimationBehavior@ animationBehavior)
    {
        this.jinit_SpecialAnimation(animationBehavior);
        this.jfields_TitleAnimation();
        this.lastFrameStartTime_TitleAnimation = this.systemWrapper.currentTimeMillis();
        @this.animationInterfaceArray = animationInterfaceArray;
        this.sizeP = int(this.animationInterfaceArray.length());
        @this.basicColorArray = basicColorArray;
        @this.dxArray = dxArray;
        @this.dyArray = dyArray;
        this.y = y;
        this.widthP = width;
        this.reset();
        return this;
    }
    

    void nextFrame()
    {
        int64 currentTime = this.systemWrapper.currentTimeMillis();
        int64 totalTimeElapsed = currentTime - this.lastFrameStartTime_TitleAnimation;
        IndexedAnimationBehavior@ indexedAnimationBehavior = cast<IndexedAnimationBehavior>(this.getAnimationBehavior());
        if (totalTimeElapsed > indexedAnimationBehavior.frameDelayTime) {
            this.previousFrame();
            this.lastFrameStartTime_TitleAnimation = currentTime;
        }
        if (this.animationInterfaceArray[0].getFrame() == 0) {
            indexedAnimationBehavior.loopIndex++;
        }
    }
    

    bool isComplete()
    {
        IndexedAnimationBehavior@ indexedAnimationBehavior = cast<IndexedAnimationBehavior>(this.getAnimationBehavior());
        if (indexedAnimationBehavior.loopTotal == -1 || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || this.getFrame() != 0) {
            return false;
        } else {
            return true;
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
    

    int getSize()
    {
        return this.animationInterfaceArray[0].getSize();
    }
    

    int getFrame()
    {
        return this.animationInterfaceArray[0].getFrame();
    }
    

    void setFrame(int frame)
    {
        for (int index = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index].setFrame(frame);
        }
    }
    

    void setLastFrame()
    {
        this.setFrame(this.getSize() - 1);
    }
    

    void reset()
    {
        this.setLastFrame();
        IndexedAnimationBehavior@ indexedAnimationBehavior = (cast<IndexedAnimationBehavior>(this.getAnimationBehavior()));
        indexedAnimationBehavior.reset();
    }
    

    void previousFrame()
    {
        for (int index = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index].previousFrame();
        }
    }
    

    void paintFrameXY(Graphics@ graphics, int frame, int x, int y)
    {
        this.setFrame(frame);
        this.paintXY(graphics, x, y);
    }
    

    void paintXY(Graphics@ graphics, int ax, int ay)
    {
        int x = 0;
        if (this.widthP != Integer::MIN_VALUE) {
            x = ((this.displayInfoSingleton_TitleAnimation.getLastWidth() - this.widthP) / 2);
        }
        int deltaX = 0;
        int deltaY = 0;
        for (int index = 0; index < this.sizeP; index++) {
            deltaX = this.dxArray[index] + x;
            deltaY = this.dyArray[index] + this.y;
            if (this.basicColorArray[index] !is this.CLEAR_COLOR) {
                this.basicSetColorUtil.setBasicColorP(graphics, this.basicColorArray[index]);
            }
            this.animationInterfaceArray[index].paintXY(graphics, deltaX, deltaY);
        }
    }
}

namespace TitleAnimation
{
    

    TitleAnimation@ createAnimation(IndexedAnimation@[]@ animationInterfaceArray, BasicColor@[]@ basicColorArray, int[]@ dxArray, int[]@ dyArray, int y, int width)
    {
        return TitleAnimation().jinit_TitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, IndexedAnimationBehavior().jinit_IndexedAnimationBehavior(1, 250));
    }
}

