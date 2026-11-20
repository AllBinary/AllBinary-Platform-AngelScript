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

class SingletonAnimationInterfaceFactory : JObjectBase, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface
{
    Animation@ animationInterface_SingletonAnimationInterfaceFactory;
    

    SingletonAnimationInterfaceFactory@ jinit_SingletonAnimationInterfaceFactory(Animation@ animationInterface)
    {
        @this.animationInterface_SingletonAnimationInterfaceFactory = animationInterface;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return this.animationInterface_SingletonAnimationInterfaceFactory;
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return this.animationInterface_SingletonAnimationInterfaceFactory;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

