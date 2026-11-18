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

class CacheInterfaceFactory : JObjectBase
{
    

    CacheInterfaceFactory@ jinit_CacheInterfaceFactory()
    {
        return this;
    }
}

namespace CacheInterfaceFactory
{
    

    CacheInterface@ getInstance(CacheType@ cacheType, CachePolicy@ cachePolicy)
    {
        jthrow(Exception().jinit_Exception("No such " + cacheType.toString()));
        return null;
    }
}

