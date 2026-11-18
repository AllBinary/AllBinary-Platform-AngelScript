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

class SimultaneousCompoundIndexAnimation : IndexedAnimation
{
    IndexedAnimation@[]@ animationInterfaceArray_SimultaneousCompoundIndexAnimation;
    

    SimultaneousCompoundIndexAnimation@ jinit_SimultaneousCompoundIndexAnimation(IndexedAnimation@[]@ animationInterfaceArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        @this.animationInterfaceArray_SimultaneousCompoundIndexAnimation = animationInterfaceArray;
        return this;
    }
    

    void setFrame(int frameIndex)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[index].setFrame(frameIndex);
        }
    }
    

    int getFrame()
    {
        return this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[0].getFrame();
    }
    

    int getAnimationSize()
    {
        return this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[0].getAnimationSize();
    }
    

    int getSize()
    {
        return this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[0].getSize();
    }
    

    void previousFrame()
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[index].previousFrame();
        }
    }
    

    void nextFrame()
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[index].nextFrame();
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
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[index].paintXY(graphics, x, y);
        }
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[index].paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    void set(GL@ gl)
    {
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundIndexAnimation[index].set(gl);
        }
    }
    

    IndexedAnimation@[]@ getAnimationInterfaceArray()
    {
        return this.animationInterfaceArray_SimultaneousCompoundIndexAnimation;
    }
    

    void setAnimationInterfaceArray(IndexedAnimation@[]@ animationInterfaceArray)
    {
        @this.animationInterfaceArray_SimultaneousCompoundIndexAnimation = animationInterfaceArray;
    }
}

