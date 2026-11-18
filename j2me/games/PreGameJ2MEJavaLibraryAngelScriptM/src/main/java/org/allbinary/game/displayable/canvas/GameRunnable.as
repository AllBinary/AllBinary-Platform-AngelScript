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
// package org.allbinary.game.displayable.canvas

class GameRunnable : JObjectBase, Runnable
{
    int WAIT;
    int FAST;
    int64 waitInMillis;

    // Java field initializers run after the super constructor
    void jfields_GameRunnable()
    {
    this.WAIT = 240;
    this.FAST = 60;
    this.waitInMillis = int64(this.WAIT);
    }
    

    GameRunnable@ jinit_GameRunnable()
    {
        this.jfields_GameRunnable();
        return this;
    }
    

    void run()
    {
        DisplayInfoSingleton::getInstance().process();
    }
    

    void processLoopSleep()
    {
        Thread::sleep(this.waitInMillis);
    }
}

