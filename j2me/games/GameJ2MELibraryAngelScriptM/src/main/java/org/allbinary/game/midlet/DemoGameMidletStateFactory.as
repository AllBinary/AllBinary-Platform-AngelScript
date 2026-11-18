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
// package org.allbinary.game.midlet

class DemoGameMidletStateFactory : JObjectBase
{
    DemoGameMidletState@ NONE;
    DemoGameMidletState@ START_DEMO;
    DemoGameMidletState@ START_GAME;
    DemoGameMidletState@ START_INPUT_MAPPING;

    // Java field initializers run after the super constructor
    void jfields_DemoGameMidletStateFactory()
    {
    @this.NONE = DemoGameMidletState().jinit_DemoGameMidletState();
    @this.START_DEMO = DemoGameMidletState().jinit_DemoGameMidletState();
    @this.START_GAME = DemoGameMidletState().jinit_DemoGameMidletState();
    @this.START_INPUT_MAPPING = DemoGameMidletState().jinit_DemoGameMidletState();
    }
    

    DemoGameMidletStateFactory@ jinit_DemoGameMidletStateFactory()
    {
        this.jfields_DemoGameMidletStateFactory();
        return this;
    }
}

namespace DemoGameMidletStateFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_STATE = DemoGameMidletStateFactory().jinit_DemoGameMidletStateFactory();
    }

    DemoGameMidletStateFactory@ jcell_STATE;
    DemoGameMidletStateFactory@ get_STATE() property { jclinit(); return jcell_STATE; }
    void set_STATE(DemoGameMidletStateFactory@ value) property { jclinit(); @jcell_STATE = value; }
    

    DemoGameMidletStateFactory@ getInstance()
    {
        return DemoGameMidletStateFactory::STATE;
    }
}

