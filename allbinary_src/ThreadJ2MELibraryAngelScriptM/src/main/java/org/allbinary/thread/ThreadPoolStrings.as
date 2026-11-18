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
// package org.allbinary.thread

class ThreadPoolStrings : JObjectBase
{
    string ADD_TASK;
    string START_TASK;
    string COMPLETE_TASK;

    // Java field initializers run after the super constructor
    void jfields_ThreadPoolStrings()
    {
    this.ADD_TASK = "addTask";
    this.START_TASK = "Started Task: ";
    this.COMPLETE_TASK = "Completed Task: ";
    }

    ThreadPoolStrings@ jinit_ThreadPoolStrings()
    {
        this.jfields_ThreadPoolStrings();
        return this;
    }
}

namespace ThreadPoolStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ThreadPoolStrings().jinit_ThreadPoolStrings();
    }

    ThreadPoolStrings@ jcell_instance;
    ThreadPoolStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ThreadPoolStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    ThreadPoolStrings@ getInstance()
    {
        return ThreadPoolStrings::instance;
    }
}

