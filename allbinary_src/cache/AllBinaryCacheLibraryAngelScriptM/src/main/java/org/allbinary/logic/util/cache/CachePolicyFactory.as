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
// package org.allbinary.logic.util.cache

class CachePolicyFactory : JObjectBase
{
    string NAME;
    CachePolicy@ MAX_TIME_THOUSAND_MAX;
    CachePolicy@ THIRTY_MINUTES_TEN_THOUSAND_MAX;
    CachePolicy@ THIRTY_MINUTES_FIFTY_THOUSAND_MAX;
    CachePolicy@ ONE_MINUTE_FIVE_MAX;
    CachePolicy@ ONE_MINUTE_TEN_MAX;
    CachePolicy@ ONE_MINUTE_ONE_HUNDRED_MAX;

    // Java field initializers run after the super constructor
    void jfields_CachePolicyFactory()
    {
    this.NAME = "lru";
    @this.MAX_TIME_THOUSAND_MAX = CachePolicy().jinit_CachePolicy(this.NAME, Long::MAX_VALUE, 1000);
    @this.THIRTY_MINUTES_TEN_THOUSAND_MAX = CachePolicy().jinit_CachePolicy(this.NAME, 1000 * 60 * 30, 10000);
    @this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = CachePolicy().jinit_CachePolicy(this.NAME, 1000 * 60 * 30, 100000);
    @this.ONE_MINUTE_FIVE_MAX = CachePolicy().jinit_CachePolicy(this.NAME, 1000 * 60 * 1, 5);
    @this.ONE_MINUTE_TEN_MAX = CachePolicy().jinit_CachePolicy(this.NAME, 1000 * 60 * 1, 10);
    @this.ONE_MINUTE_ONE_HUNDRED_MAX = CachePolicy().jinit_CachePolicy(this.NAME, 1000 * 60 * 1, 100);
    }

    CachePolicyFactory@ jinit_CachePolicyFactory()
    {
        this.jfields_CachePolicyFactory();
        return this;
    }
}

namespace CachePolicyFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CachePolicyFactory().jinit_CachePolicyFactory();
    }

    CachePolicyFactory@ jcell_instance;
    CachePolicyFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CachePolicyFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    CachePolicyFactory@ getInstance()
    {
        return CachePolicyFactory::instance;
    }
}

