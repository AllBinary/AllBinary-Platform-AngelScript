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

class SimultaneousCompoundIndexAnimationInterfaceFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    AnimationInterfaceFactoryInterface@[]@ basicAnimationInterfaceFactoryInterfaceArray_SimultaneousCompoundIndexAnimationInterfaceFactory;
    AnimationBehaviorFactory@ animationBehaviorFactory_SimultaneousCompoundIndexAnimationInterfaceFactory;
    

    SimultaneousCompoundIndexAnimationInterfaceFactory@ jinit_SimultaneousCompoundIndexAnimationInterfaceFactory(AnimationInterfaceFactoryInterface@[]@ basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        @this.basicAnimationInterfaceFactoryInterfaceArray_SimultaneousCompoundIndexAnimationInterfaceFactory = basicAnimationInterfaceFactoryInterfaceArray;
        @this.animationBehaviorFactory_SimultaneousCompoundIndexAnimationInterfaceFactory = animationBehaviorFactory;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        int size = int(this.basicAnimationInterfaceFactoryInterfaceArray_SimultaneousCompoundIndexAnimationInterfaceFactory.length());
        IndexedAnimation@[]@ animationInterfaceArray = array<IndexedAnimation@>(size);
        for (int index = 0; index < size; index++) {
            @animationInterfaceArray[index] = cast<IndexedAnimation>(this.basicAnimationInterfaceFactoryInterfaceArray_SimultaneousCompoundIndexAnimationInterfaceFactory[index].getInstance(instanceId));
        }
        return this.getOrCreate(animationInterfaceArray);
    }
    

    Animation@ getOrCreate(IndexedAnimation@[]@ animationInterfaceArray)
    {
        return SimultaneousCompoundIndexAnimation().jinit_SimultaneousCompoundIndexAnimation(animationInterfaceArray, this.animationBehaviorFactory_SimultaneousCompoundIndexAnimationInterfaceFactory.getOrCreateInstance());
    }
    

    AnimationInterfaceFactoryInterface@[]@ getBasicAnimationInterfaceFactoryInterfaceArray()
    {
        return this.basicAnimationInterfaceFactoryInterfaceArray_SimultaneousCompoundIndexAnimationInterfaceFactory;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

