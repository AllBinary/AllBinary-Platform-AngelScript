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
// package org.allbinary.graphics

class ScreenListenerHandler : JObjectBase
{
    ScreenListenerInterface@ screenListenerInterface;

    // Java field initializers run after the super constructor
    void jfields_ScreenListenerHandler()
    {
    @this.screenListenerInterface = ScreenEmptyListener().jinit_ScreenEmptyListener();
    }

    ScreenListenerHandler@ jinit_ScreenListenerHandler()
    {
        this.jfields_ScreenListenerHandler();
        return this;
    }
    

    void setListener(ScreenListenerInterface@ screenListenerInterface)
    {
        @this.screenListenerInterface = screenListenerInterface;
    }
    

    void fireWithState(bool isFullScreen)
    {
        this.screenListenerInterface.onFullScreen(isFullScreen);
    }
    

    void fire()
    {
        this.screenListenerInterface.onFullScreenDisplay();
    }
}

namespace ScreenListenerHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ScreenListenerHandler().jinit_ScreenListenerHandler();
    }

    ScreenListenerHandler@ jcell_instance;
    ScreenListenerHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ScreenListenerHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    ScreenListenerHandler@ getInstance()
    {
        return ScreenListenerHandler::instance;
    }
}

