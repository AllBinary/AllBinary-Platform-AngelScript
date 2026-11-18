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

class AbstractArrayListPool : JObjectBase, PoolInterface
{
    CommonStrings@ commonStrings;
    BasicArrayList@ buffers;
    CacheableInterfaceFactoryInterface@ cacheableInterfaceFactoryInterface;

    // Java field initializers run after the super constructor
    void jfields_AbstractArrayListPool()
    {
    @this.commonStrings = CommonStrings::getInstance();
    @this.buffers = BasicArrayListD().jinit_BasicArrayListD();
    
    }
    

    AbstractArrayListPool@ jinit_AbstractArrayListPool(CacheableInterfaceFactoryInterface@ cacheableInterfaceFactoryInterface)
    {
        this.jfields_AbstractArrayListPool();
        @this.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface;
        return this;
    }
    

    void clear()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
    

    CacheableInterface@ remove(JObject@ key)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return null;
    }
    

    void add(CacheableInterface@ cacheableInterface)
    {
        this.buffers.add(cacheableInterface);
    }
    

    void addArray(CacheableInterface@[]@ cacheableInterfaces)
    {
        for (int index = 0; index < int(cacheableInterfaces.length()); index++) {
            this.buffers.add(cacheableInterfaces[index]);
        }
    }
}

