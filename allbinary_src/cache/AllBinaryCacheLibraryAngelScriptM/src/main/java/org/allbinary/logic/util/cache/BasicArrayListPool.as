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

class BasicArrayListPool : AbstractArrayListPool
{
    

    BasicArrayListPool@ jinit_BasicArrayListPool(CacheableInterfaceFactoryInterface@ cacheableInterfaceFactoryInterface)
    {
        this.jinit_AbstractArrayListPool(cacheableInterfaceFactoryInterface);
        return this;
    }
    

    void clear()
    {
        this.buffers.clear();
    }
    

    CacheableInterface@ remove(JObject@ key)
    {
        int size = this.buffers.size();
        if (size > 0) {
            return cast<CacheableInterface>(this.buffers.removeAt(size - 1));
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance(key);
        }
        return null;
    }
    

    void addAll(BasicArrayList@ usedList)
    {
        for (int index = usedList.size(); --index >= 0; ) {
            CacheableInterface@ anyType = cast<CacheableInterface>(usedList.objectArray[index]);
            this.add(anyType);
        }
        usedList.clear();
    }
    

    void releaseUsedBackToPool(BasicArrayList@ usedList)
    {
        for (int index = usedList.size(); --index >= 0; ) {
            BasicArrayListCacheable@ list = cast<BasicArrayListCacheable>(usedList.objectArray[index]);
            if (list.size() == 0) {
                usedList.removeAt(index);
                this.add(list);
            }
        }
    }
}

