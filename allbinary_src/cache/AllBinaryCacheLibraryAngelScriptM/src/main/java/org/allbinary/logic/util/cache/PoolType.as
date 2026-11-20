/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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

class PoolType : JObjectBase
{
    CacheType@ cacheType_PoolType;
    

    PoolType@ jinit_PoolType(CacheType@ cacheType)
    {
        @this.cacheType_PoolType = cacheType;
        return this;
    }
    

    CacheType@ getCacheType()
    {
        return this.cacheType_PoolType;
    }
    

    string toString()
    {
        string POOL_TYPE = "PoolType: ";
        return POOL_TYPE + this.getCacheType().toString();
    }
}

