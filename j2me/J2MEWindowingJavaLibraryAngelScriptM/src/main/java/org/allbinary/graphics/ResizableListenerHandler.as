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

class ResizableListenerHandler : JObjectBase
{

    ResizableListenerHandler@ jinit_ResizableListenerHandler()
    {
        return this;
    }
    

    void setListener(ResizableListenerInterface@ resizableListenerInterface)
    {
    }
    

    void fire(bool isFullScreen)
    {
    }
    

    void fireEvent(bool value)
    {
    }
}

namespace ResizableListenerHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ResizableListenerHandler().jinit_ResizableListenerHandler();
    }

    ResizableListenerHandler@ jcell_instance;
    ResizableListenerHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ResizableListenerHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    ResizableListenerHandler@ getInstance()
    {
        return ResizableListenerHandler::instance;
    }
}

