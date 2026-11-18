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

class AnimationInterfaceFactoryInterfaceComposite : JObjectBase, AnimationInterfaceFactoryInterface
{
    AnimationInterfaceFactoryInterface@[]@ animationInterfaceFactoryInterfaceArray;
    

    AnimationInterfaceFactoryInterfaceComposite@ jinit_AnimationInterfaceFactoryInterfaceComposite(AnimationInterfaceFactoryInterface@[]@ basicAnimationInterfaceFactoryInterfaceArray)
    {
        @this.animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return NullAnimationFactory::getFactoryInstance().getInstance(0);
    }
    

    AnimationInterfaceFactoryInterface@[]@ getAnimationInterfaceFactoryInterfaceArray()
    {
        return this.animationInterfaceFactoryInterfaceArray;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

