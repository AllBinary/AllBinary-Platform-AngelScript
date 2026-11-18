/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.emulator.swt

class SWTProcessor : JObjectBase
{
    Runnable@ runnable;

    // Java field initializers run after the super constructor
    void jfields_SWTProcessor()
    {
    @this.runnable = NullRunnable::getInstance();
    }
    

    SWTProcessor@ jinit_SWTProcessor()
    {
        this.jfields_SWTProcessor();
        return this;
    }
    

    void process(SwtDisplay@ display)
    {
        display.sleep();
    }
}

namespace SWTProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SWTProcessor().jinit_SWTProcessor();
    }

    SWTProcessor@ jcell_instance;
    SWTProcessor@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SWTProcessor@ value) property { jclinit(); @jcell_instance = value; }
    

    SWTProcessor@ getInstance()
    {
        return SWTProcessor::instance;
    }
}

