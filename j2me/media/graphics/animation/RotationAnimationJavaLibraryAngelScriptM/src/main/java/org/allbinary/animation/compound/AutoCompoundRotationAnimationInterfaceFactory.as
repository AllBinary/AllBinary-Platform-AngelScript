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

class AutoCompoundRotationAnimationInterfaceFactory : CompoundAnimationInterfaceFactory
{
    

    AutoCompoundRotationAnimationInterfaceFactory@ jinit_AutoCompoundRotationAnimationInterfaceFactory(AnimationInterfaceFactoryInterface@[]@ basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_CompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
        return this;
    }
    

    Animation@[]@ createArray(int size)
    {
        return array<Animation@>(size);
    }
    

    Animation@ createAnimation(Animation@[]@ animationInterfaceArray)
    {
        return AutoCompoundRotationAnimation().jinit_AutoCompoundRotationAnimation(AutoCompoundRotationAnimationInterfaceFactory::jarrayCast_RotationAnimation_Animation(animationInterfaceArray), this.animationBehaviorFactory.getOrCreateInstance());
    }
}

namespace AutoCompoundRotationAnimationInterfaceFactory
{

    RotationAnimation@[]@ jarrayCast_RotationAnimation_Animation(Animation@[]@ source)
    {
        if (source is null) { return null; }
        RotationAnimation@[]@ result = array<RotationAnimation@>(source.length());
        for (uint i = 0; i < source.length(); i++) { @result[i] = cast<RotationAnimation>(source[i]); }
        return result;
    }
}

