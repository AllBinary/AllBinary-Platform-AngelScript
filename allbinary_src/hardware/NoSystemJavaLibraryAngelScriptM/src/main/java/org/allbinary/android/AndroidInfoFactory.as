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
// package org.allbinary.android

class AndroidInfoFactory : JObjectBase
{
    int version_AndroidInfoFactory;

    // Java field initializers run after the super constructor
    void jfields_AndroidInfoFactory()
    {
    this.version_AndroidInfoFactory = 8;
    }

    AndroidInfoFactory@ jinit_AndroidInfoFactory()
    {
        this.jfields_AndroidInfoFactory();
        return this;
    }
    

    int getVersion()
    {
        return this.version_AndroidInfoFactory;
    }
}

namespace AndroidInfoFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AndroidInfoFactory().jinit_AndroidInfoFactory();
    }

    AndroidInfoFactory@ jcell_instance;
    AndroidInfoFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AndroidInfoFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AndroidInfoFactory@ getInstance()
    {
        return AndroidInfoFactory::instance;
    }
}

