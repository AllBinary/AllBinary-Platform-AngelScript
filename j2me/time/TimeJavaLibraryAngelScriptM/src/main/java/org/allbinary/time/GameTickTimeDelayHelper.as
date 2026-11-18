/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.time

class GameTickTimeDelayHelper : JObjectBase
{
    int64 timeDelta;
    int64 startTime;
    int64 lastStartTime;
    

    GameTickTimeDelayHelper@ jinit_GameTickTimeDelayHelper(int64 startTime)
    {
        this.startTime = startTime;
        this.lastStartTime = 0;
        return this;
    }
    

    int64 setStartTime()
    {
        this.startTime = System::currentTimeMillis();
        return this.startTime;
    }
    

    void loop()
    {
        if (this.lastStartTime == Long::MIN_VALUE) {
            this.timeDelta = 0;
        } else {
            this.timeDelta = System::currentTimeMillis() - this.lastStartTime;
        }
    }
    

    int64 getTimeFromStart()
    {
        return this.startTime - this.lastStartTime;
    }
}

