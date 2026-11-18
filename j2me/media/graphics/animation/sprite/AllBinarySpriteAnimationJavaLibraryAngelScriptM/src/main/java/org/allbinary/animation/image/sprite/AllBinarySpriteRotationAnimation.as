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

class AllBinarySpriteRotationAnimation : HackRotationSpriteIndexedAnimation
{
    

    AllBinarySpriteRotationAnimation@ jinit_AllBinarySpriteRotationAnimation(Sprite@ sprite, Image@ image, AnimationBehavior@ animationBehavior)
    {
        this.jinit_HackRotationSpriteIndexedAnimation(sprite, image, AngleInfo::getInstance(int16((AngleFactory::getInstance().TOTAL_ANGLE / sprite.getRawFrameCount()))), animationBehavior);
        this.angleInfo.adjustAngle(this.sprite.getFrame());
        return this;
    }
    

    void nextRotation()
    {
        this.sprite.nextFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    void previousRotation()
    {
        this.sprite.prevFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
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
        this.sprite.setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    void adjustFrameToAngle(Angle@ angle)
    {
        this.adjustFrame(angle.getValue());
    }
    

    void adjustFrame(int16 angle)
    {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, int(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())));
    }
}

