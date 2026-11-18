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

class NullSpecialAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface
{
    

    NullSpecialAnimationFactory@ jinit_NullSpecialAnimationFactory()
    {
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return SpecialAnimation::getInstance();
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return SpecialAnimation::getInstance();
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

namespace NullSpecialAnimationFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_SPECIAL_ANIMATION_FACTORY = NullSpecialAnimationFactory().jinit_NullSpecialAnimationFactory();
    }

    NullSpecialAnimationFactory@ jcell_NULL_SPECIAL_ANIMATION_FACTORY;
    NullSpecialAnimationFactory@ get_NULL_SPECIAL_ANIMATION_FACTORY() property { jclinit(); return jcell_NULL_SPECIAL_ANIMATION_FACTORY; }
    void set_NULL_SPECIAL_ANIMATION_FACTORY(NullSpecialAnimationFactory@ value) property { jclinit(); @jcell_NULL_SPECIAL_ANIMATION_FACTORY = value; }
    

    NullSpecialAnimationFactory@ getFactoryInstance()
    {
        return NullSpecialAnimationFactory::NULL_SPECIAL_ANIMATION_FACTORY;
    }
}

