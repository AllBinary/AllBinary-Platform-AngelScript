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
// package org.allbinary.animation.special

class SpecialAnimation : IndexedAnimation, SpecialAnimationInterface
{
    

    SpecialAnimation@ jinit_SpecialAnimation(AnimationBehavior@ animationBehavior)
    {
        this.jinit_IndexedAnimation(animationBehavior);
        return this;
    }
    

    void nextFrame()
    {
        IndexedAnimationBehavior@ indexedAnimationBehavior = (cast<IndexedAnimationBehavior>(this.animationBehaviorP));
        indexedAnimationBehavior.loopIndex++;
    }
    

    void setLastFrame()
    {
    }
    

    bool isComplete()
    {
        return false;
    }
    

    void open()
    {
    }
    

    void close()
    {
    }
    

    void process()
    {
    }
}

namespace SpecialAnimation
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_SPECIAL_ANIMATION = SpecialAnimation().jinit_SpecialAnimation(IndexedAnimationBehavior().jinit_IndexedAnimationBehavior(1, 250));
    }

    SpecialAnimation@ jcell_NULL_SPECIAL_ANIMATION;
    SpecialAnimation@ get_NULL_SPECIAL_ANIMATION() property { jclinit(); return jcell_NULL_SPECIAL_ANIMATION; }
    void set_NULL_SPECIAL_ANIMATION(SpecialAnimation@ value) property { jclinit(); @jcell_NULL_SPECIAL_ANIMATION = value; }
    

    SpecialAnimation@ getInstance()
    {
        return SpecialAnimation::NULL_SPECIAL_ANIMATION;
    }
}

