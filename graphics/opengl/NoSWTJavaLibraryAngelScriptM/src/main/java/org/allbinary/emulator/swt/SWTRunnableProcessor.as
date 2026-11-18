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

class SWTRunnableProcessor : SWTProcessor
{

    SWTRunnableProcessor@ jinit_SWTRunnableProcessor()
    {
        this.jinit_SWTProcessor();
        return this;
    }
    

    void process(SwtDisplay@ display)
    {
    }
}

namespace SWTRunnableProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceR = SWTRunnableProcessor().jinit_SWTRunnableProcessor();
    }

    SWTRunnableProcessor@ jcell_instanceR;
    SWTRunnableProcessor@ get_instanceR() property { jclinit(); return jcell_instanceR; }
    void set_instanceR(SWTRunnableProcessor@ value) property { jclinit(); @jcell_instanceR = value; }
    

    SWTRunnableProcessor@ getInstance()
    {
        return SWTRunnableProcessor::instanceR;
    }
}

