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
// package org.allbinary.animation.compound

class CompoundRotationAnimation : RotationAnimation, CompoundAnimationInterface
{
    RotationAnimation@[]@ animationInterfaceArray_CompoundRotationAnimation;
    

    CompoundRotationAnimation@ jinit_CompoundRotationAnimation(RotationAnimation@[]@ animationInterfaceArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RotationAnimation(AngleInfo::getInstance(AngleFactory::getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil::createInstance(4), animationBehavior);
        @this.animationInterfaceArray_CompoundRotationAnimation = animationInterfaceArray;
        @this.circularIndexUtil = CircularIndexUtil::createInstance(int(this.animationInterfaceArray_CompoundRotationAnimation.length()));
        return this;
    }
    

    void setFrame(int index)
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].setFrame(index);
    }
    

    int getFrame()
    {
        return this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].getFrame();
    }
    

    int getAnimationSize()
    {
        return this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].getAnimationSize();
    }
    

    int getSize()
    {
        return this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].getSize();
    }
    

    void previousFrame()
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].previousFrame();
    }
    

    void nextFrame()
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].nextFrame();
    }
    

    void previousRotation()
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].previousRotation();
    }
    

    void nextRotation()
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].nextRotation();
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
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y);
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z);
    }
    

    IndexedAnimation@ getCurrentAnimation()
    {
        return this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()];
    }
    

    void nextAnimation()
    {
        int frame = this.getFrame();
        this.circularIndexUtil.next();
        this.setFrame(frame);
    }
    

    void previousAnimation()
    {
        int frame = this.getFrame();
        this.circularIndexUtil.previous();
        this.setFrame(frame);
    }
    

    void setAnimation(int index)
    {
        int frame = this.getFrame();
        this.circularIndexUtil.setIndex(index);
        this.setFrame(frame);
    }
    

    void setFrameByDirection(Direction@ direction)
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].setFrameByDirection(direction);
    }
    

    void setFrameToAngle(Angle@ angle)
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].setFrameToAngle(angle);
    }
    

    void adjustFrameToAngle(Angle@ newAngle)
    {
        this.adjustFrame(newAngle.getValue());
    }
    

    void adjustFrame(int16 angle)
    {
        this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].adjustFrame(angle);
    }
    

    AngleInfo@ getAngleInfoP()
    {
        return this.animationInterfaceArray_CompoundRotationAnimation[this.circularIndexUtil.getIndex()].getAngleInfoP();
    }
    

    RotationAnimation@[]@ getAnimationInterfaceArray()
    {
        return this.animationInterfaceArray_CompoundRotationAnimation;
    }
    

    void setAnimationInterfaceArray(RotationAnimation@[]@ animationInterfaceArray)
    {
        @this.animationInterfaceArray_CompoundRotationAnimation = animationInterfaceArray;
    }
    

    void set(GL@ gl)
    {
        for (int index = int(this.animationInterfaceArray_CompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_CompoundRotationAnimation[index].set(gl);
        }
    }
}

