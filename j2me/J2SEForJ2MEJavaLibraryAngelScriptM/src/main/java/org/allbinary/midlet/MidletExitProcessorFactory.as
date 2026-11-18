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
// package org.allbinary.midlet

class MidletExitProcessorFactory : JObjectBase
{

    MidletExitProcessorFactory@ jinit_MidletExitProcessorFactory()
    {
        return this;
    }
    

    Processor@ getExitInstance(MIDlet@ midlet)
    {
        if (AppletUtil::isAppletLoader(midlet) || J2MEUtil::isJ2ME()) {
            return Processor::getInstance();
        } else {
            return MidletExitProcessor().jinit_MidletExitProcessor(midlet);
        }
        return null;
    }
}

namespace MidletExitProcessorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MidletExitProcessorFactory().jinit_MidletExitProcessorFactory();
    }

    MidletExitProcessorFactory@ jcell_instance;
    MidletExitProcessorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MidletExitProcessorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    MidletExitProcessorFactory@ getInstance()
    {
        return MidletExitProcessorFactory::instance;
    }
}

