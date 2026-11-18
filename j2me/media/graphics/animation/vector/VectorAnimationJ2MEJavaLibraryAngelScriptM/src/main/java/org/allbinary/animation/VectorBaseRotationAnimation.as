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

class VectorBaseRotationAnimation : RotationAnimation, VectorAnimationInterface
{
    int[]@[]@[]@ currentPoints_VectorBaseRotationAnimation;

    // Java field initializers run after the super constructor
    void jfields_VectorBaseRotationAnimation()
    {
    @this.currentPoints_VectorBaseRotationAnimation = NullUtil::getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    }
    

    VectorBaseRotationAnimation@ jinit_VectorBaseRotationAnimation(AngleInfo@ angleInfo, int[]@[]@[]@ currentPoints, BasicColor@ basicColor, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RotationAnimation(angleInfo, CircularIndexUtil::createInstance(360 / int(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
        this.jfields_VectorBaseRotationAnimation();
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
        return this;
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    int getFrame()
    {
        return this.circularIndexUtil.getIndex();
    }
    

    void setFrame(int index)
    {
        this.circularIndexUtil.setIndex(index);
    }
    

    void nextFrame()
    {
        this.circularIndexUtil.next();
    }
    

    void previousFrame()
    {
        this.circularIndexUtil.previous();
    }
    

    int getSize()
    {
        return int(this.currentPoints_VectorBaseRotationAnimation.length());
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
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
        try {
            int nextPointX = 0;
            int nextPointY = 0;
            int[]@ nextPoint;
            int[]@ point;
            int[]@[]@ currentPointsFrame = this.currentPoints_VectorBaseRotationAnimation[this.circularIndexUtil.getIndex()];
            int size = int(currentPointsFrame.length());
            int index = size - 2;
            while (--index >= 0) {
                @nextPoint = currentPointsFrame[index];
                @point = currentPointsFrame[index + 1];
                nextPointX = nextPoint[0];
                nextPointY = nextPoint[1];
                if (nextPointX != 1000) {
                    graphics.drawLine(point[0] + x, point[1] + y, nextPointX + x, nextPointY + y);
                } else {
                    index--;
                }
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "paintVectors", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    int[]@[]@ getPoints(int frame)
    {
        return this.currentPoints_VectorBaseRotationAnimation[frame];
    }
    

    void setPoints(int[]@[]@[]@ currentPoints)
    {
        @this.currentPoints_VectorBaseRotationAnimation = currentPoints;
        @this.circularIndexUtil = CircularIndexUtil::createInstance(int(this.currentPoints_VectorBaseRotationAnimation.length()));
    }
    

    BasicColor@ getBasicColorP()
    {
        return RotationAnimation::getBasicColorP();
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        RotationAnimation::setBasicColorP(basicColor);
    }
}

