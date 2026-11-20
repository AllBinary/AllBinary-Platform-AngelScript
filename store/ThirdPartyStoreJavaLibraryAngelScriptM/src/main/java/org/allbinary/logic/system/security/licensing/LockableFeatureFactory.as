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
// package org.allbinary.logic.system.security.licensing

class LockableFeatureFactory : JObjectBase
{
    BasicArrayList@ list_LockableFeatureFactory;

    // Java field initializers run after the super constructor
    void jfields_LockableFeatureFactory()
    {
    @this.list_LockableFeatureFactory = BasicArrayListD().jinit_BasicArrayListD();
    }

    LockableFeatureFactory@ jinit_LockableFeatureFactory()
    {
        this.jfields_LockableFeatureFactory();
        return this;
    }
    

    BasicArrayList@ getList()
    {
        return this.list_LockableFeatureFactory;
    }
}

namespace LockableFeatureFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LockableFeatureFactory().jinit_LockableFeatureFactory();
    }

    LockableFeatureFactory@ jcell_instance;
    LockableFeatureFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LockableFeatureFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    LockableFeatureFactory@ getInstance()
    {
        return LockableFeatureFactory::instance;
    }
}

