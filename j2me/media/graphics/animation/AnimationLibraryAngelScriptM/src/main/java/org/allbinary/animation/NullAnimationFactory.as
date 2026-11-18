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

class NullAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface
{
    Animation@ NULL_ANIMATION;
    Animation@[]@ EMPTY_ARRAY;

    // Java field initializers run after the super constructor
    void jfields_NullAnimationFactory()
    {
    @this.NULL_ANIMATION = NullAnimationFactory_j1().jinit_NullAnimationFactory_j1(this);
    @this.EMPTY_ARRAY = array<Animation@>(0);
    }
    

    NullAnimationFactory@ jinit_NullAnimationFactory()
    {
        this.jfields_NullAnimationFactory();
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return this.NULL_ANIMATION;
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return this.NULL_ANIMATION;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

namespace NullAnimationFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY = NullAnimationFactory().jinit_NullAnimationFactory();
        @jcell_NULL_ANIMATION_FACTORY = NullAnimationFactory().jinit_NullAnimationFactory();
    }

    NullAnimationFactory@ jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY;
    NullAnimationFactory@ get_NULL_NOT_FOR_USE_ANIMATION_FACTORY() property { jclinit(); return jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY; }
    void set_NULL_NOT_FOR_USE_ANIMATION_FACTORY(NullAnimationFactory@ value) property { jclinit(); @jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY = value; }

    NullAnimationFactory@ jcell_NULL_ANIMATION_FACTORY;
    NullAnimationFactory@ get_NULL_ANIMATION_FACTORY() property { jclinit(); return jcell_NULL_ANIMATION_FACTORY; }
    void set_NULL_ANIMATION_FACTORY(NullAnimationFactory@ value) property { jclinit(); @jcell_NULL_ANIMATION_FACTORY = value; }
    

    NullAnimationFactory@ getFactoryInstance()
    {
        return NullAnimationFactory::NULL_ANIMATION_FACTORY;
    }
}

class NullAnimationFactory_j1 : Animation
{
    NullAnimationFactory@ jouter;

    NullAnimationFactory_j1@ jinit_NullAnimationFactory_j1(NullAnimationFactory@ jouter)
    {
        @this.jouter = jouter;
        this.jinit_Animation();
        return this;
    }


        void paintXY(Graphics@ graphics, int x, int y)
        {
        }
}

