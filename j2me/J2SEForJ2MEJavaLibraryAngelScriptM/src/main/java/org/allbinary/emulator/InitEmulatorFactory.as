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
// package org.allbinary.emulator

class InitEmulatorFactory : JObjectBase
{
    bool initEmulator_InitEmulatorFactory;

    // Java field initializers run after the super constructor
    void jfields_InitEmulatorFactory()
    {
    this.initEmulator_InitEmulatorFactory = false;
    }

    InitEmulatorFactory@ jinit_InitEmulatorFactory()
    {
        this.jfields_InitEmulatorFactory();
        return this;
    }
    

    void setInitEmulator(bool initEmulator)
    {
        this.initEmulator_InitEmulatorFactory = initEmulator;
    }
    

    bool isInitEmulator()
    {
        return this.initEmulator_InitEmulatorFactory;
    }
}

namespace InitEmulatorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = InitEmulatorFactory().jinit_InitEmulatorFactory();
    }

    InitEmulatorFactory@ jcell_instance;
    InitEmulatorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(InitEmulatorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    InitEmulatorFactory@ getInstance()
    {
        return InitEmulatorFactory::instance;
    }
}

