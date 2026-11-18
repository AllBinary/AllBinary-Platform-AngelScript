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

class IndexedBasicArrayListCache : BaseBasicArrayListCache, CacheInterface
{
    CommonStrings@ commonStrings;
    int size_IndexedBasicArrayListCache;
    int index;

    // Java field initializers run after the super constructor
    void jfields_IndexedBasicArrayListCache()
    {
    @this.commonStrings = CommonStrings::getInstance();
    this.size_IndexedBasicArrayListCache = 0;
    this.index = 0;
    }
    

    IndexedBasicArrayListCache@ jinit_IndexedBasicArrayListCache()
    {
        this.jinit_BaseBasicArrayListCache();
        this.jfields_IndexedBasicArrayListCache();
        return this;
    }
    

    void init(int size)
    {
        if (this.size_IndexedBasicArrayListCache < size) {
            this.list.ensureCapacity(size);
            for (int index = size - 1; index >= this.size_IndexedBasicArrayListCache; index--) {
                this.addDefault();
            }
            this.size_IndexedBasicArrayListCache = size;
        }
    }
    

    JObject@ getAt(int index)
    {
        return this.list.objectArray[index];
    }
    

    void addDefault()
    {
    }
    

    void addObject(JObject@ anyType)
    {
        this.list.add(anyType);
    }
    

    void add(CacheableInterface@ cacheableInterface)
    {
        this.list.add(cacheableInterface);
    }
    

    void addArray(CacheableInterface@[]@ cacheableInterfaces)
    {
        jthrow(Exception().jinit_Exception("No Imple"));
    }
    

    void clear()
    {
        this.index = 0;
    }
}

namespace IndexedBasicArrayListCache
{
    

    IndexedBasicArrayListCache@ createCache(int size)
    {
        IndexedBasicArrayListCache@ indexedBasicArrayListCache = IndexedBasicArrayListCache().jinit_IndexedBasicArrayListCache();
        indexedBasicArrayListCache.init(size);
        return indexedBasicArrayListCache;
    }
}

