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
// package org.allbinary.graphics.color

class BasicColorCacheFactory : JObjectBase
{
    ABHashtable@ hashtable_BasicColorCacheFactory;

    // Java field initializers run after the super constructor
    void jfields_BasicColorCacheFactory()
    {
    @this.hashtable_BasicColorCacheFactory = StdUtil::getInstance().createHashtable();
    }
    

    BasicColorCacheFactory@ jinit_BasicColorCacheFactory()
    {
        this.jfields_BasicColorCacheFactory();
        return this;
    }
    

    void add(BasicColor@ basicDefaultColor)
    {
        this.hashtable_BasicColorCacheFactory.put(JInteger().jinit_JInteger(basicDefaultColor.intValue()), basicDefaultColor);
    }
    

    BasicColor@ getAndOrCreate(JInteger@ integer)
    {
        BasicColor@ basicColor = cast<BasicColor>(this.hashtable_BasicColorCacheFactory.get(integer));
        if (basicColor is null) {
            @basicColor = BasicColorFactory::getInstance().createInstance(integer.intValue());
            this.hashtable_BasicColorCacheFactory.put(integer, basicColor);
        }
        return basicColor;
    }
}

namespace BasicColorCacheFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicColorCacheFactory().jinit_BasicColorCacheFactory();
    }

    BasicColorCacheFactory@ jcell_instance;
    BasicColorCacheFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicColorCacheFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicColorCacheFactory@ getInstance()
    {
        return BasicColorCacheFactory::instance;
    }
}

