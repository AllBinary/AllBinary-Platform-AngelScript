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

class NullRotationAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface
{
    RotationAnimation@[]@ NULL_ROTATION_ANIMATION_ARRAY;
    Animation@ NULL_ANIMATION_NullRotationAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_NullRotationAnimationFactory()
    {
    @this.NULL_ROTATION_ANIMATION_ARRAY = array<RotationAnimation@>(0);
    @this.NULL_ANIMATION_NullRotationAnimationFactory = NullRotationAnimation2().jinit_NullRotationAnimation2();
    }
    

    NullRotationAnimationFactory@ jinit_NullRotationAnimationFactory()
    {
        this.jfields_NullRotationAnimationFactory();
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return this.NULL_ANIMATION_NullRotationAnimationFactory;
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return this.NULL_ANIMATION_NullRotationAnimationFactory;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

namespace NullRotationAnimationFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ROTATION_ANIMATION_FACTORY = NullRotationAnimationFactory().jinit_NullRotationAnimationFactory();
    }

    NullRotationAnimationFactory@ jcell_NULL_ROTATION_ANIMATION_FACTORY;
    NullRotationAnimationFactory@ get_NULL_ROTATION_ANIMATION_FACTORY() property { jclinit(); return jcell_NULL_ROTATION_ANIMATION_FACTORY; }
    void set_NULL_ROTATION_ANIMATION_FACTORY(NullRotationAnimationFactory@ value) property { jclinit(); @jcell_NULL_ROTATION_ANIMATION_FACTORY = value; }
    

    NullRotationAnimationFactory@ getFactoryInstance()
    {
        return NullRotationAnimationFactory::NULL_ROTATION_ANIMATION_FACTORY;
    }
}

