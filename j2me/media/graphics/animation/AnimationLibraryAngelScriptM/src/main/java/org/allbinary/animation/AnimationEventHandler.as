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

class AnimationEventHandler : BasicEventHandler
{
    

    AnimationEventHandler@ jinit_AnimationEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
}

namespace AnimationEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_eventHandler = AnimationEventHandler().jinit_AnimationEventHandler();
    }

    AnimationEventHandler@ jcell_eventHandler;
    AnimationEventHandler@ get_eventHandler() property { jclinit(); return jcell_eventHandler; }
    void set_eventHandler(AnimationEventHandler@ value) property { jclinit(); @jcell_eventHandler = value; }
    

    AnimationEventHandler@ getInstance()
    {
        return AnimationEventHandler::eventHandler;
    }
}

