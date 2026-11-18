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
// package org.allbinary.game.displayable.canvas

class NoMenuInputProcessor : BasicMenuInputProcessor
{
    

    NoMenuInputProcessor@ jinit_NoMenuInputProcessor()
    {
        this.jinit_BasicMenuInputProcessor(BasicArrayListUtil::getInstance().getImmutableInstance(), -1, NullCanvas::NULL_CANVAS);
        return this;
    }
    

    void onDownGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void onUpGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void onMotionGestureEvent(MotionGestureEvent@ motionGestureEvent)
    {
    }
}

namespace NoMenuInputProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NoMenuInputProcessor().jinit_NoMenuInputProcessor();
    }

    NoMenuInputProcessor@ jcell_SINGLETON;
    NoMenuInputProcessor@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NoMenuInputProcessor@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    NoMenuInputProcessor@ getInstance()
    {
        return NoMenuInputProcessor::SINGLETON;
    }
}

