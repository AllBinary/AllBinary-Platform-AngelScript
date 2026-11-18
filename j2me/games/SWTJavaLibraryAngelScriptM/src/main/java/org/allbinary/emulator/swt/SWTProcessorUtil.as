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

class SWTProcessorUtil : JObjectBase
{
    SWTProcessor@ swtProcessor;

    // Java field initializers run after the super constructor
    void jfields_SWTProcessorUtil()
    {
    @this.swtProcessor = SWTProcessor::getInstance();
    }

    SWTProcessorUtil@ jinit_SWTProcessorUtil()
    {
        this.jfields_SWTProcessorUtil();
        return this;
    }
}

namespace SWTProcessorUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SWTProcessorUtil().jinit_SWTProcessorUtil();
    }

    SWTProcessorUtil@ jcell_instance;
    SWTProcessorUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SWTProcessorUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    SWTProcessorUtil@ getInstance()
    {
        return SWTProcessorUtil::instance;
    }
}

