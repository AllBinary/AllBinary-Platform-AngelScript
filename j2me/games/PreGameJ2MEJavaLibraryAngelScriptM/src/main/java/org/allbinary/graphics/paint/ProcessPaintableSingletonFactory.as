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
// package org.allbinary.graphics.paint

class ProcessPaintableSingletonFactory : JObjectBase
{
    

    ProcessPaintableSingletonFactory@ jinit_ProcessPaintableSingletonFactory()
    {
        return this;
    }
}

namespace ProcessPaintableSingletonFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = ProcessPaintable().jinit_ProcessPaintable();
    }

    ProcessPaintable@ jcell_SINGLETON;
    ProcessPaintable@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(ProcessPaintable@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    ProcessPaintable@ getInstance()
    {
        return ProcessPaintableSingletonFactory::SINGLETON;
    }
}

