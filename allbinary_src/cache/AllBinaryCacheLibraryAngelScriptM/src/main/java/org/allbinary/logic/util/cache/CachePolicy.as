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
    string name;
    int64 maxTime;
    int64 maxSize;
    

    CachePolicy@ jinit_CachePolicy(string name, int64 maxTime, int64 maxSize)
    {
        this.name = name;
        this.setMaxTime(maxTime);
        this.setMaxSize(maxSize);
        return this;
    }
    

    int64 getMaxTime()
    {
        return this.maxTime;
    }
    

    void setMaxTime(int64 maxTime)
    {
        this.maxTime = maxTime;
    }
    

    int64 getMaxSize()
    {
        return this.maxSize;
    }
    

    void setMaxSize(int64 maxSize)
    {
        this.maxSize = maxSize;
    }
    

    string getName()
    {
        return this.name;
    }
}

