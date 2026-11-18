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
// package org.allbinary.logic.math

class ScaleFactorFactory : JObjectBase
{
    int DEFAULT_SCALE_FACTOR;
    int DEFAULT_SCALE_VALUE;

    // Java field initializers run after the super constructor
    void jfields_ScaleFactorFactory()
    {
    this.DEFAULT_SCALE_FACTOR = 10;
    this.DEFAULT_SCALE_VALUE = 1024;
    }

    ScaleFactorFactory@ jinit_ScaleFactorFactory()
    {
        this.jfields_ScaleFactorFactory();
        return this;
    }
}

namespace ScaleFactorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ScaleFactorFactory().jinit_ScaleFactorFactory();
    }

    ScaleFactorFactory@ jcell_instance;
    ScaleFactorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ScaleFactorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ScaleFactorFactory@ getInstance()
    {
        return ScaleFactorFactory::instance;
    }
}

