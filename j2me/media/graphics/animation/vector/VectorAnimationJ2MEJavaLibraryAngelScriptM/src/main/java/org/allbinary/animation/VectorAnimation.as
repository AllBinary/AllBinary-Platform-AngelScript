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

class VectorAnimation : IndexedAnimation, VectorAnimationInterface
{
    int[]@[]@[]@ currentPoints_VectorAnimation;
    CircularIndexUtil@ circularIndexUtil_VectorAnimation;

    // Java field initializers run after the super constructor
    void jfields_VectorAnimation()
    {
    @this.currentPoints_VectorAnimation = NullUtil::getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    @this.circularIndexUtil_VectorAnimation = CircularIndexUtil::createInstance(0);
    }
    

    VectorAnimation@ jinit_VectorAnimation(int[]@[]@[]@ currentPoints, BasicColor@ basicColor, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        this.jfields_VectorAnimation();
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
        return this;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        bool changed = false;
        if (this.getBasicColorP() is null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        IndexedAnimation::setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    void changeBasicColor(BasicColor@ basicColor)
    {
        bool changed = false;
        if (this.getChangeBasicColor() is null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        IndexedAnimation::changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    void setAlpha(int alpha)
    {
        bool changed = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        IndexedAnimation::setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    void setScale(float scaleX, float scaleY)
    {
    }
    

    void setMaxScale(float maxScaleX, float maxScaleY)
    {
    }
    

    void updateModifiers()
    {
    }
    

    int getAnimationSize()
    {
        return this.getSize();
    }
    

    int getSize()
    {
        return int(this.currentPoints_VectorAnimation.length());
    }
    

    void setSequence(int[]@ sequence)
    {
    }
    

    int[]@ getSequence()
    {
        return PrimitiveIntUtil::getArrayInstance();
    }
    

    void nextFrame()
    {
        this.circularIndexUtil_VectorAnimation.next();
    }
    

    void previousFrame()
    {
        this.circularIndexUtil_VectorAnimation.previous();
    }
    

    void paintVectors(Graphics@ graphics, int x, int y)
    {
        try {
            int nextPointX = 0;
            int nextPointY = 0;
            int[]@ nextPoint;
            int[]@ point;
            int[]@[]@ currentPointsFrame = this.currentPoints_VectorAnimation[this.circularIndexUtil_VectorAnimation.getIndex()];
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
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
        this.paintVectors(graphics, x, y);
    }
    

    int getFrame()
    {
        return this.circularIndexUtil_VectorAnimation.getIndex();
    }
    

    void setFrame(int index)
    {
        this.circularIndexUtil_VectorAnimation.setIndex(index);
    }
    

    int[]@[]@ getPoints(int frame)
    {
        return this.currentPoints_VectorAnimation[frame];
    }
    

    void setPoints(int[]@[]@[]@ currentPoints)
    {
        @this.currentPoints_VectorAnimation = currentPoints;
        @this.circularIndexUtil_VectorAnimation = CircularIndexUtil::createInstance(int(currentPoints.length()));
    }
    

    BasicColor@ getBasicColorP()
    {
        return IndexedAnimation::getBasicColorP();
    }
}

namespace VectorAnimation
{
    

    VectorAnimation@ createVectorAnimation(int[]@[]@ currentPoints2, BasicColor@ basicColor, AnimationBehavior@ animationBehavior)
    {
        int[]@[]@[]@ currentPoints = jnewArray3_Int(1, int(currentPoints2.length()), 2);
        int size = int(currentPoints2.length());
        for (int index = 0; index < size; index++) {
            currentPoints[0][index][0] = currentPoints2[index][0];
            currentPoints[0][index][1] = currentPoints2[index][1];
        }
        return VectorAnimation().jinit_VectorAnimation(currentPoints, basicColor, animationBehavior);
    }
}

