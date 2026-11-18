/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.view

class NullEmulatorView : JObjectBase, EmulatorViewInterface
{

    NullEmulatorView@ jinit_NullEmulatorView()
    {
        return this;
    }
    

    void setMidlet(MIDlet@ midlet)
    {
    }
    

    void onEmulatorInitComplete(JObject@ midletActivity)
    {
    }
    

    void onSetDisplayable(Displayable@ displayable)
    {
    }
}

namespace NullEmulatorView
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_EMULATOR_VIEW = NullEmulatorView().jinit_NullEmulatorView();
    }

    NullEmulatorView@ jcell_NULL_EMULATOR_VIEW;
    NullEmulatorView@ get_NULL_EMULATOR_VIEW() property { jclinit(); return jcell_NULL_EMULATOR_VIEW; }
    void set_NULL_EMULATOR_VIEW(NullEmulatorView@ value) property { jclinit(); @jcell_NULL_EMULATOR_VIEW = value; }
}

