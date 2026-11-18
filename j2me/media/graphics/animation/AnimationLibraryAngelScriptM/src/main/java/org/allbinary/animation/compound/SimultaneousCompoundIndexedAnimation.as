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

class SimultaneousCompoundIndexedAnimation : IndexedAnimation
{
    Animation@[]@ animationInterfaceArray_SimultaneousCompoundIndexedAnimation;
    

    SimultaneousCompoundIndexedAnimation@ jinit_SimultaneousCompoundIndexedAnimation(Animation@[]@ animationInterfaceArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        @this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation = animationInterfaceArray;
        return this;
    }
    

    void setFrame(int frameIndex)
    {
        IndexedAnimation@ indexedAnimation;
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation.length()); --index >= 0; ) {
            @indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation[index]);
            indexedAnimation.setFrame(frameIndex);
        }
    }
    

    int getFrame()
    {
        IndexedAnimation@ indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation[0]);
        return indexedAnimation.getFrame();
    }
    

    int getSize()
    {
        IndexedAnimation@ indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation[0]);
        return indexedAnimation.getSize();
    }
    

    void previousFrame()
    {
        IndexedAnimation@ indexedAnimation;
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation.length()); --index >= 0; ) {
            @indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation[index]);
            indexedAnimation.previousFrame();
        }
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
        for (int index = int(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation[index].nextFrame();
        }
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        int size = int(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation.length());
        for (int index = 0; index < size; index++) {
            this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation[index].paintXY(graphics, x, y);
        }
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
        int size = int(this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation.length());
        for (int index = 0; index < size; index++) {
            this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation[index].paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    Animation@[]@ getAnimationInterfaceArray()
    {
        return this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation;
    }
    

    void setAnimationInterfaceArray(Animation@[]@ animationInterfaceArray)
    {
        @this.animationInterfaceArray_SimultaneousCompoundIndexedAnimation = animationInterfaceArray;
    }
}

