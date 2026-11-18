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

class BasicArrayListResetablePool : AbstractArrayListPool
{
    

    BasicArrayListResetablePool@ jinit_BasicArrayListResetablePool(CacheableInterfaceFactoryInterface@ cacheableInterfaceFactoryInterface)
    {
        this.jinit_AbstractArrayListPool(cacheableInterfaceFactoryInterface);
        return this;
    }
    

    void clear()
    {
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
}

