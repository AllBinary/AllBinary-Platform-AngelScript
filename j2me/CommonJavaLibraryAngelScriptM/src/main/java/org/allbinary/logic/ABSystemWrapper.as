/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

class ABSystemWrapper : JObjectBase
{

    ABSystemWrapper@ jinit_ABSystemWrapper()
    {
        return this;
    }
    

    void arraycopy(JObject@ src, int srcPos, JObject@ dest, int destPos, int length)
    {
        System::arraycopy(@src, srcPos, @dest, destPos, length);
    }
    

    int64 currentTimeMillis()
    {
        return System::currentTimeMillis();
    }
}

namespace ABSystemWrapper
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ABSystemWrapper().jinit_ABSystemWrapper();
    }

    ABSystemWrapper@ jcell_instance;
    ABSystemWrapper@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ABSystemWrapper@ value) property { jclinit(); @jcell_instance = value; }
    

    ABSystemWrapper@ getInstance()
    {
        return ABSystemWrapper::instance;
    }
}

