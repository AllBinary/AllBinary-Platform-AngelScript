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
// package org.allbinary.animation.transition.shake

class NoShakeAnimationListener : ShakeAnimationListener
{

    NoShakeAnimationListener@ jinit_NoShakeAnimationListener()
    {
        this.jinit_ShakeAnimationListener();
        return this;
    }
}

namespace NoShakeAnimationListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NO_SHAKE_ANIMATION_LISTENER = NoShakeAnimationListener().jinit_NoShakeAnimationListener();
    }

    ShakeAnimationListener@ jcell_NO_SHAKE_ANIMATION_LISTENER;
    ShakeAnimationListener@ get_NO_SHAKE_ANIMATION_LISTENER() property { jclinit(); return jcell_NO_SHAKE_ANIMATION_LISTENER; }
    void set_NO_SHAKE_ANIMATION_LISTENER(ShakeAnimationListener@ value) property { jclinit(); @jcell_NO_SHAKE_ANIMATION_LISTENER = value; }
}

