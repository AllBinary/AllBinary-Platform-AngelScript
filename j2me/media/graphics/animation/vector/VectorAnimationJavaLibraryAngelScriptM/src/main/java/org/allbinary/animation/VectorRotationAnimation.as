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

class VectorRotationAnimation : VectorBaseRotationAnimation
{
    

    VectorRotationAnimation@ jinit_VectorRotationAnimation(int[]@[]@[]@ currentPoints, BasicColor@ basicColor, AnimationBehavior@ animationBehavior)
    {
        this.jinit_VectorBaseRotationAnimation(AngleInfo::getInstance(int16((int(AngleFactory::getInstance().TOTAL_ANGLE) / int(currentPoints.length())))), currentPoints, basicColor, animationBehavior);
        this.angleInfo.adjustAngle(this.getFrame());
        return this;
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
    

    void setFrame(int index)
    {
        VectorBaseRotationAnimation::setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    void adjustFrame(int16 newAngle)
    {
        this.setFrame(this.frameUtil.getFrameForAngle(newAngle, int(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())));
    }
    

    void adjustFrameToAngle(Angle@ newAngle)
    {
        this.adjustFrame(newAngle.getValue());
    }
}

