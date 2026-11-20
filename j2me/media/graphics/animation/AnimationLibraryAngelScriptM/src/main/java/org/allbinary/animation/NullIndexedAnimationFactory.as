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

class NullIndexedAnimationFactory : JObjectBase, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface
{
    Animation@ NULL_ANIMATION_NullIndexedAnimationFactory;

    // Java field initializers run after the super constructor
    void jfields_NullIndexedAnimationFactory()
    {
    @this.NULL_ANIMATION_NullIndexedAnimationFactory = NullIndexedAnimationInner().jinit_NullIndexedAnimationInner();
    }
    

    NullIndexedAnimationFactory@ jinit_NullIndexedAnimationFactory()
    {
        this.jfields_NullIndexedAnimationFactory();
        return this;
    }
    

    Animation@ getInstance(int instanceId)
    {
        return this.NULL_ANIMATION_NullIndexedAnimationFactory;
    }
    

    Animation@ getInstanceAnimation(Animation@ animationInterface)
    {
        return this.NULL_ANIMATION_NullIndexedAnimationFactory;
    }
    

    void setInitialScale(ScaleProperties@ scaleProperties)
    {
    }
}

namespace NullIndexedAnimationFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_INDEXED_ANIMATION_ARRAY = array<IndexedAnimation@>(0);
        @jcell_NULL_INDEXED_ANIMATION_FACTORY = NullIndexedAnimationFactory().jinit_NullIndexedAnimationFactory();
    }

    IndexedAnimation@[]@ jcell_NULL_INDEXED_ANIMATION_ARRAY;
    IndexedAnimation@[]@ get_NULL_INDEXED_ANIMATION_ARRAY() property { jclinit(); return jcell_NULL_INDEXED_ANIMATION_ARRAY; }
    void set_NULL_INDEXED_ANIMATION_ARRAY(IndexedAnimation@[]@ value) property { jclinit(); @jcell_NULL_INDEXED_ANIMATION_ARRAY = value; }

    NullIndexedAnimationFactory@ jcell_NULL_INDEXED_ANIMATION_FACTORY;
    NullIndexedAnimationFactory@ get_NULL_INDEXED_ANIMATION_FACTORY() property { jclinit(); return jcell_NULL_INDEXED_ANIMATION_FACTORY; }
    void set_NULL_INDEXED_ANIMATION_FACTORY(NullIndexedAnimationFactory@ value) property { jclinit(); @jcell_NULL_INDEXED_ANIMATION_FACTORY = value; }
    

    NullIndexedAnimationFactory@ getFactoryInstance()
    {
        return NullIndexedAnimationFactory::NULL_INDEXED_ANIMATION_FACTORY;
    }
}

