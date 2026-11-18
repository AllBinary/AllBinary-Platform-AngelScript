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
// package org.allbinary.logic.communication.log.config.type

class LogConfigTypes : JObjectBase
{
    

    LogConfigTypes@ jinit_LogConfigTypes()
    {
        return this;
    }
}

namespace LogConfigTypes
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_LOGGING = BasicArrayListD().jinit_BasicArrayListD();
    }

    BasicArrayList@ jcell_LOGGING;
    BasicArrayList@ get_LOGGING() property { jclinit(); return jcell_LOGGING; }
    void set_LOGGING(BasicArrayList@ value) property { jclinit(); @jcell_LOGGING = value; }
}

