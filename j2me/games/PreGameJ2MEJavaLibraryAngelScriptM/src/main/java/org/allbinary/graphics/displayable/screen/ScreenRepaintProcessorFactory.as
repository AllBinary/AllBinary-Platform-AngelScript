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
// package org.allbinary.graphics.displayable.screen

class ScreenRepaintProcessorFactory : JObjectBase
{
    

    ScreenRepaintProcessorFactory@ jinit_ScreenRepaintProcessorFactory()
    {
        return this;
    }
    

    Processor@ create(Displayable@ displayable)
    {
        if (!J2MEUtil::isJ2ME()) {
            return ScreenRepaintProcessor().jinit_ScreenRepaintProcessor(displayable);
        } else {
            return Processor::getInstance();
        }
        return null;
    }
}

namespace ScreenRepaintProcessorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ScreenRepaintProcessorFactory().jinit_ScreenRepaintProcessorFactory();
    }

    ScreenRepaintProcessorFactory@ jcell_instance;
    ScreenRepaintProcessorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ScreenRepaintProcessorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ScreenRepaintProcessorFactory@ getInstance()
    {
        return ScreenRepaintProcessorFactory::instance;
    }
}

