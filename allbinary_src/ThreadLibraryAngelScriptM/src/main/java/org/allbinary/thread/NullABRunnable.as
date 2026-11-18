/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.thread

class NullABRunnable : ABRunnable
{

    NullABRunnable@ jinit_NullABRunnable()
    {
        this.jinit_ABRunnable();
        return this;
    }
    

    bool isRunning()
    {
        return false;
    }
}

namespace NullABRunnable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullABRunnable().jinit_NullABRunnable();
    }

    NullABRunnable@ jcell_instance;
    NullABRunnable@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NullABRunnable@ value) property { jclinit(); @jcell_instance = value; }
    

    NullABRunnable@ getInstance()
    {
        return NullABRunnable::instance;
    }
}

