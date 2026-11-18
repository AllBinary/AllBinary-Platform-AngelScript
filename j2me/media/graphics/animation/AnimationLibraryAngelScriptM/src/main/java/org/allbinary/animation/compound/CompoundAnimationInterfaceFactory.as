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

class CompoundAnimationInterfaceFactory : JObjectBase, AnimationInterfaceFactoryInterface
{
    AnimationInterfaceFactoryInterface@[]@ basicAnimationInterfaceFactoryInterfaceArrayP;
    AnimationBehaviorFactory@ animationBehaviorFactory;
    

    CompoundAnimationInterfaceFactory@ jinit_CompoundAnimationInterfaceFactory(AnimationInterfaceFactoryInterface@[]@ basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        @this.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray;
        @this.animationBehaviorFactory = animationBehaviorFactory;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        int size = int(this.basicAnimationInterfaceFactoryInterfaceArrayP.length());
        Animation@[]@ animationInterfaceArray = this.createArray(size);
        for (int index = 0; index < size; index++) {
            @animationInterfaceArray[index] = this.basicAnimationInterfaceFactoryInterfaceArrayP[index].getInstance(instanceId);
        }
        return this.createAnimation(animationInterfaceArray);
    }
    

    Animation@[]@ createArray(int size)
    {
        return NullAnimationFactory::getFactoryInstance().EMPTY_ARRAY;
    }
    

    Animation@ createAnimation(Animation@[]@ animationInterfaceArray)
    {
        return NullAnimationFactory::getFactoryInstance().getInstance(0);
    }
    

    AnimationInterfaceFactoryInterface@[]@ getBasicAnimationInterfaceFactoryInterfaceArray()
    {
        return this.basicAnimationInterfaceFactoryInterfaceArrayP;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
        int size = int(this.basicAnimationInterfaceFactoryInterfaceArrayP.length());
        for (int index = 0; index < size; index++) {
            this.basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties);
        }
    }
}

