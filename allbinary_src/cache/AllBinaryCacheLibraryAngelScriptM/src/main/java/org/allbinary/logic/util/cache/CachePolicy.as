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

class CachePolicy : JObjectBase
{
    string name_CachePolicy;
    int64 maxTime_CachePolicy;
    int64 maxSize_CachePolicy;
    

    CachePolicy@ jinit_CachePolicy(string name, int64 maxTime, int64 maxSize)
    {
        this.name_CachePolicy = name;
        this.setMaxTime(maxTime);
        this.setMaxSize(maxSize);
        return this;
    }
    

    int64 getMaxTime()
    {
        return this.maxTime_CachePolicy;
    }
    

    void setMaxTime(int64 maxTime)
    {
        this.maxTime_CachePolicy = maxTime;
    }
    

    int64 getMaxSize()
    {
        return this.maxSize_CachePolicy;
    }
    

    void setMaxSize(int64 maxSize)
    {
        this.maxSize_CachePolicy = maxSize;
    }
    

    string getName()
    {
        return this.name_CachePolicy;
    }
}

