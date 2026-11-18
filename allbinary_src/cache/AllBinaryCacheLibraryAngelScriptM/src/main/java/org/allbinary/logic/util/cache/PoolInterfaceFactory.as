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

class PoolInterfaceFactory : JObjectBase
{
    

    PoolInterfaceFactory@ jinit_PoolInterfaceFactory()
    {
        return this;
    }
}

namespace PoolInterfaceFactory
{
    

    PoolInterface@ getInstance(CacheableInterfaceFactoryInterface@ cacheableInterfaceFactoryInterface, PoolType@ poolType, CachePolicy@ cachePolicy)
    {
        jthrow(Exception().jinit_Exception("No Such PoolType: " + poolType.toString()));
        return null;
    }
}

