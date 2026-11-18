// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

class CacheTypeFactory : JObjectBase
{
    CacheType@ NO_CACHE;
    CacheType@ CACHE;
    CacheType@ SET;
    CacheType@ CACHE_VECTOR;

    // Java field initializers run after the super constructor
    void jfields_CacheTypeFactory()
    {
    @this.NO_CACHE = CacheType().jinit_CacheType(StringUtil::getInstance().EMPTY_STRING, StringUtil::getInstance().EMPTY_STRING);
    @this.CACHE = CacheType().jinit_CacheType(StringUtil::getInstance().EMPTY_STRING, StringUtil::getInstance().EMPTY_STRING);
    @this.SET = CacheType().jinit_CacheType(StringUtil::getInstance().EMPTY_STRING, "Set");
    @this.CACHE_VECTOR = CacheType().jinit_CacheType(StringUtil::getInstance().EMPTY_STRING, StringUtil::getInstance().EMPTY_STRING);
    }

    CacheTypeFactory@ jinit_CacheTypeFactory()
    {
        this.jfields_CacheTypeFactory();
        return this;
    }
}

namespace CacheTypeFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CacheTypeFactory().jinit_CacheTypeFactory();
    }

    CacheTypeFactory@ jcell_instance;
    CacheTypeFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CacheTypeFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    CacheTypeFactory@ getInstance()
    {
        return CacheTypeFactory::instance;
    }
}

