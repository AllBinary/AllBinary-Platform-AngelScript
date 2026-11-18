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

class SimultaneousCompoundRotationAnimation : RotationAnimation
{
    RotationAnimation@[]@ animationInterfaceArray_SimultaneousCompoundRotationAnimation;
    

    SimultaneousCompoundRotationAnimation@ jinit_SimultaneousCompoundRotationAnimation(RotationAnimation@[]@ animationInterfaceArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_RotationAnimation(AngleInfo::getInstance(AngleFactory::getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil::createInstance(4), animationBehavior);
        @this.animationInterfaceArray_SimultaneousCompoundRotationAnimation = animationInterfaceArray;
        return this;
    }
    

    void setFrame(int frameIndex)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].setFrame(frameIndex);
        }
    }
    

    int getFrame()
    {
        return this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[0].getFrame();
    }
    

    int getAnimationSize()
    {
        return this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[0].getAnimationSize();
    }
    

    int getSize()
    {
        return this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[0].getSize();
    }
    

    void previousFrame()
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].previousFrame();
        }
    }
    

    void nextFrame()
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].nextFrame();
        }
    }
    

    void previousRotation()
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].previousRotation();
        }
    }
    

    void nextRotation()
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].nextRotation();
        }
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
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].paintXY(graphics, x, y);
        }
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    void setFrameByDirection(Direction@ direction)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].setFrameByDirection(direction);
        }
    }
    

    void setFrameToAngle(Angle@ angle)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].setFrameToAngle(angle);
        }
    }
    

    void adjustFrameToAngle(Angle@ newAngle)
    {
        this.adjustFrame(newAngle.getValue());
    }
    

    void adjustFrame(int16 angle)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].adjustFrame(angle);
        }
    }
    

    AngleInfo@ getAngleInfoP()
    {
        return this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[0].getAngleInfoP();
    }
    

    RotationAnimation@[]@ getAnimationInterfaceArray()
    {
        return this.animationInterfaceArray_SimultaneousCompoundRotationAnimation;
    }
    

    void setAnimationInterfaceArray(RotationAnimation@[]@ animationInterfaceArray)
    {
        @this.animationInterfaceArray_SimultaneousCompoundRotationAnimation = animationInterfaceArray;
    }
    

    void set(GL@ gl)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundRotationAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundRotationAnimation[index].set(gl);
        }
    }
}

