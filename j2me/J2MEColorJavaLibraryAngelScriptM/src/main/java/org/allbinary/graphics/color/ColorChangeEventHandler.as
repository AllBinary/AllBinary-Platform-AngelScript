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
// package org.allbinary.graphics.color

class ColorChangeEventHandler : BasicEventHandler
{
    

    ColorChangeEventHandler@ jinit_ColorChangeEventHandler()
    {
        this.jinit_BasicEventHandler();
        return this;
    }
}

namespace ColorChangeEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_eventHandler = ColorChangeEventHandler().jinit_ColorChangeEventHandler();
    }

    ColorChangeEventHandler@ jcell_eventHandler;
    ColorChangeEventHandler@ get_eventHandler() property { jclinit(); return jcell_eventHandler; }
    void set_eventHandler(ColorChangeEventHandler@ value) property { jclinit(); @jcell_eventHandler = value; }
    

    ColorChangeEventHandler@ getInstance()
    {
        return ColorChangeEventHandler::eventHandler;
    }
}

