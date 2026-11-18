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
// package org.allbinary.game.input

class NoPlayerGameInput : PlayerGameInput
{
    

    NoPlayerGameInput@ jinit_NoPlayerGameInput()
    {
        this.jinit_PlayerGameInput(BasicArrayListD().jinit_BasicArrayListD(), BasicArrayListD().jinit_BasicArrayListD(), -1);
        return this;
    }
    

    void onDownGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
    }
    

    void onUpGameKeyEvent(GameKeyEvent@ gameKeyEvent)
    {
    }
}

namespace NoPlayerGameInput
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NoPlayerGameInput().jinit_NoPlayerGameInput();
    }

    NoPlayerGameInput@ jcell_SINGLETON;
    NoPlayerGameInput@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NoPlayerGameInput@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    NoPlayerGameInput@ getInstance()
    {
        return NoPlayerGameInput::SINGLETON;
    }
}

