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
// package org.allbinary.game.input

class InputProcessorFactory : JObjectBase
{
    InputProcessor@ inputProcessor_InputProcessorFactory;

    // Java field initializers run after the super constructor
    void jfields_InputProcessorFactory()
    {
    @this.inputProcessor_InputProcessorFactory = InputProcessor().jinit_InputProcessor();
    }

    InputProcessorFactory@ jinit_InputProcessorFactory()
    {
        this.jfields_InputProcessorFactory();
        return this;
    }
    

    InputProcessor@ getInputProcessor()
    {
        return this.inputProcessor_InputProcessorFactory;
    }
}

namespace InputProcessorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = InputProcessorFactory().jinit_InputProcessorFactory();
    }

    InputProcessorFactory@ jcell_instance;
    InputProcessorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(InputProcessorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    InputProcessorFactory@ getInstance()
    {
        return InputProcessorFactory::instance;
    }
}

