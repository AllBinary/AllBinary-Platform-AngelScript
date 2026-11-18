// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

class PoolTypeFactory : JObjectBase
{
    PoolType@ VECTOR_POOL;

    // Java field initializers run after the super constructor
    void jfields_PoolTypeFactory()
    {
    @this.VECTOR_POOL = PoolType().jinit_PoolType(CacheTypeFactory::getInstance().NO_CACHE);
    }

    PoolTypeFactory@ jinit_PoolTypeFactory()
    {
        this.jfields_PoolTypeFactory();
        return this;
    }
}

namespace PoolTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PoolTypeFactory().jinit_PoolTypeFactory();
    }

    PoolTypeFactory@ jcell_instance;
    PoolTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PoolTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    PoolTypeFactory@ getInstance()
    {
        return PoolTypeFactory::instance;
    }
}

