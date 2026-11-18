/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class AnimationBehaviorFactory : JObjectBase
{

    AnimationBehaviorFactory@ jinit_AnimationBehaviorFactory()
    {
        return this;
    }
    

    AnimationBehavior@ getOrCreateInstance()
    {
        return AnimationBehavior::getInstance();
    }
}

namespace AnimationBehaviorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AnimationBehaviorFactory().jinit_AnimationBehaviorFactory();
    }

    AnimationBehaviorFactory@ jcell_instance;
    AnimationBehaviorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AnimationBehaviorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AnimationBehaviorFactory@ getInstance()
    {
        return AnimationBehaviorFactory::instance;
    }
}

