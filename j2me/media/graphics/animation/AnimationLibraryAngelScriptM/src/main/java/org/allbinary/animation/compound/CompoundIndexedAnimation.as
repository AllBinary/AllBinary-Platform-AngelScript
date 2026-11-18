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

class CompoundIndexedAnimation : IndexedAnimation, CompoundAnimationInterface
{
    CircularIndexUtil@ circularIndexUtil_CompoundIndexedAnimation;
    Animation@[]@ animationInterfaceArray_CompoundIndexedAnimation;
    

    CompoundIndexedAnimation@ jinit_CompoundIndexedAnimation(Animation@[]@ animationInterfaceArray, AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        @this.animationInterfaceArray_CompoundIndexedAnimation = animationInterfaceArray;
        @this.circularIndexUtil_CompoundIndexedAnimation = CircularIndexUtil::createInstance(int(this.animationInterfaceArray_CompoundIndexedAnimation.length()));
        return this;
    }
    

    void setFrame(int index)
    {
        IndexedAnimation@ indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()]);
        indexedAnimation.setFrame(index);
    }
    

    int getFrame()
    {
        IndexedAnimation@ indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()]);
        return indexedAnimation.getFrame();
    }
    

    int getSize()
    {
        IndexedAnimation@ indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()]);
        return indexedAnimation.getSize();
    }
    

    void previousFrame()
    {
        IndexedAnimation@ indexedAnimation = cast<IndexedAnimation>(this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()]);
        indexedAnimation.previousFrame();
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
        this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()].nextFrame();
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()].paintXY(graphics, x, y);
    }
    

    void paintThreedXYZ(Graphics@ graphics, int x, int y, int z)
    {
        this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()].paintThreedXYZ(graphics, x, y, z);
    }
    

    IndexedAnimation@ getCurrentAnimation()
    {
        return cast<IndexedAnimation>(this.animationInterfaceArray_CompoundIndexedAnimation[this.circularIndexUtil_CompoundIndexedAnimation.getIndex()]);
    }
    

    void nextAnimation()
    {
        int frame = this.getFrame();
        this.circularIndexUtil_CompoundIndexedAnimation.next();
        this.setFrame(frame);
    }
    

    void previousAnimation()
    {
        int frame = this.getFrame();
        this.circularIndexUtil_CompoundIndexedAnimation.previous();
        this.setFrame(frame);
    }
    

    void setAnimation(int index)
    {
        int frame = this.getFrame();
        this.circularIndexUtil_CompoundIndexedAnimation.setIndex(index);
        this.setFrame(frame);
    }
    

    Animation@[]@ getAnimationInterfaceArray()
    {
        return this.animationInterfaceArray_CompoundIndexedAnimation;
    }
    

    void setAnimationInterfaceArray(Animation@[]@ animationInterfaceArray)
    {
        @this.animationInterfaceArray_CompoundIndexedAnimation = animationInterfaceArray;
    }
    

    void set(GL@ gl)
    {
        for (int index = int(this.animationInterfaceArray_CompoundIndexedAnimation.length()); --index >= 0; ) {
            this.animationInterfaceArray_CompoundIndexedAnimation[index].set(gl);
        }
    }
}

