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

class SimultaneousCompoundRotationAnimationInterfaceFactory : CompoundAnimationInterfaceFactory
{
    

    SimultaneousCompoundRotationAnimationInterfaceFactory@ jinit_SimultaneousCompoundRotationAnimationInterfaceFactory(AnimationInterfaceFactoryInterface@[]@ basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory@ animationBehaviorFactory)
    {
        this.jinit_CompoundAnimationInterfaceFactory(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
        if (animationBehaviorFactory is AnimationBehaviorFactory::getInstance()) {
            ForcedLogUtil::log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
        return this;
    }
    

    Animation@[]@ createArray(int size)
    {
        return array<Animation@>(size);
    }
    

    Animation@ createAnimation(Animation@[]@ animationInterfaceArray)
    {
        return SimultaneousCompoundRotationAnimation().jinit_SimultaneousCompoundRotationAnimation(SimultaneousCompoundRotationAnimationInterfaceFactory::jarrayCast_RotationAnimation_Animation(animationInterfaceArray), this.animationBehaviorFactory.getOrCreateInstance());
    }
}

namespace SimultaneousCompoundRotationAnimationInterfaceFactory
{

    RotationAnimation@[]@ jarrayCast_RotationAnimation_Animation(Animation@[]@ source)
    {
        if (source is null) { return null; }
        RotationAnimation@[]@ result = array<RotationAnimation@>(source.length());
        for (uint i = 0; i < source.length(); i++) { @result[i] = cast<RotationAnimation>(source[i]); }
        return result;
    }
}

