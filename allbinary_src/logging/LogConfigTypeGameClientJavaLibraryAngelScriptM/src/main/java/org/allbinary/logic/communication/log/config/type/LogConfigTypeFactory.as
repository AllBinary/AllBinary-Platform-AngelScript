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
// package org.allbinary.logic.communication.log.config.type

class LogConfigTypeFactory : JObjectBase
{
    string NO_DESCRIPTION_LogConfigTypeFactory;
    LogConfigType@ OS;
    LogConfigType@ FACTORYERROR;

    // Java field initializers run after the super constructor
    void jfields_LogConfigTypeFactory()
    {
    this.NO_DESCRIPTION_LogConfigTypeFactory = "No Description";
    @this.OS = LogConfigType().jinit_LogConfigType("Operating System", this.NO_DESCRIPTION_LogConfigTypeFactory);
    @this.FACTORYERROR = LogConfigType().jinit_LogConfigType("Factory Error", this.NO_DESCRIPTION_LogConfigTypeFactory);
    }
    

    LogConfigTypeFactory@ jinit_LogConfigTypeFactory()
    {
        this.jfields_LogConfigTypeFactory();
        LogConfigTypes::LOGGING.add(this.OS);
        LogConfigTypes::LOGGING.add(this.FACTORYERROR);
        return this;
    }
}

namespace LogConfigTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LogConfigTypeFactory().jinit_LogConfigTypeFactory();
    }

    LogConfigTypeFactory@ jcell_instance;
    LogConfigTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LogConfigTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    LogConfigTypeFactory@ getInstance()
    {
        return LogConfigTypeFactory::instance;
    }
}

