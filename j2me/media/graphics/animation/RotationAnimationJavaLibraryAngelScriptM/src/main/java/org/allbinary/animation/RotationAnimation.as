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

class RotationAnimation : IndexedAnimation, RotationAnimationInterface
{
    FrameUtil@ frameUtil;
    DirectionUtil@ directionUtil;
    AngleInfo@ angleInfo;
    CircularIndexUtil@ circularIndexUtil;

    // Java field initializers run after the super constructor
    void jfields_RotationAnimation()
    {
    @this.frameUtil = FrameUtil::getInstance();
    @this.directionUtil = DirectionUtil::getInstance();
    
    
    }
    

    RotationAnimation@ jinit_RotationAnimation(AngleInfo@ angleInfo, CircularIndexUtil@ circularIndexUtil, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        this.jfields_RotationAnimation();
        @this.angleInfo = angleInfo;
        @this.circularIndexUtil = circularIndexUtil;
        return this;
    }
    

    void nextRotationX()
    {
    }
    

    void previousRotationX()
    {
    }
    

    void nextRotation()
    {
        this.angleInfo.adjustAngle(this.circularIndexUtil.next());
    }
    

    void previousRotation()
    {
        this.angleInfo.adjustAngle(this.circularIndexUtil.previous());
    }
    

    void nextRotationZ()
    {
    }
    

    void previousRotationZ()
    {
    }
    

    void setFrame(int index)
    {
        this.circularIndexUtil.setIndex(index);
        int newFrame = this.circularIndexUtil.getIndex();
        this.angleInfo.adjustAngle(newFrame);
    }
    

    void setFrameByDirection(Direction@ direction)
    {
        Angle@ angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    void setFrameToAngle(Angle@ angle)
    {
        this.adjustFrameToAngle(angle);
    }
    

    void adjustFrameToAngle(Angle@ angle)
    {
        this.adjustFrame(angle.getValue());
    }
    

    void adjustFrame(int16 angle)
    {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, int(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())));
    }
    

    int getFrame()
    {
        return this.circularIndexUtil.getIndex();
    }
    

    int getSize()
    {
        return this.circularIndexUtil.getSize();
    }
    

    AngleInfo@ getAngleInfoP()
    {
        return this.angleInfo;
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(IndexedAnimation::toString()).append("circularIndexUtil: ").append(this.circularIndexUtil.toString()).append("angleInfo: ").append(this.angleInfo.toString()).toString();
    }
}

