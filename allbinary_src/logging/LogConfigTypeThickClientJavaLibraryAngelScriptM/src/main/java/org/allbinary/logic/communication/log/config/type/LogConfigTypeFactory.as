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
    string NO_DESCRIPTION;
    LogConfigType@ OS;
    LogConfigType@ FACTORYERROR;
    LogConfigType@ FILE;
    LogConfigType@ FILEERROR;
    LogConfigType@ IDLOGGING;
    LogConfigType@ REPLACE;
    LogConfigType@ REPLACE_INFO;
    LogConfigType@ REPLACEERROR;

    // Java field initializers run after the super constructor
    void jfields_LogConfigTypeFactory()
    {
    this.NO_DESCRIPTION = "No Description";
    @this.OS = LogConfigType().jinit_LogConfigType("Operating System", this.NO_DESCRIPTION);
    @this.FACTORYERROR = LogConfigType().jinit_LogConfigType("Factory Error", this.NO_DESCRIPTION);
    @this.FILE = LogConfigType().jinit_LogConfigType("File", this.NO_DESCRIPTION);
    @this.FILEERROR = LogConfigType().jinit_LogConfigType("File Error", this.NO_DESCRIPTION);
    @this.IDLOGGING = LogConfigType().jinit_LogConfigType("ID Logging", this.NO_DESCRIPTION);
    @this.REPLACE = LogConfigType().jinit_LogConfigType("Replace", this.NO_DESCRIPTION);
    @this.REPLACE_INFO = LogConfigType().jinit_LogConfigType("Replace Info", this.NO_DESCRIPTION);
    @this.REPLACEERROR = LogConfigType().jinit_LogConfigType("Replace Error", this.NO_DESCRIPTION);
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

