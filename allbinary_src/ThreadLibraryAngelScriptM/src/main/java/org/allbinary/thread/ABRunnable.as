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
// package org.allbinary.thread

class ABRunnable : JObjectBase, RunnableInterface
{
    bool running_ABRunnable;

    // Java field initializers run after the super constructor
    void jfields_ABRunnable()
    {
    this.running_ABRunnable = false;
    }

    ABRunnable@ jinit_ABRunnable()
    {
        this.jfields_ABRunnable();
        return this;
    }
    

    void setThread(Thread@ thread)
    {
    }
    

    bool isRunning()
    {
        return this.running_ABRunnable;
    }
    

    void setRunning(bool running)
    {
        this.running_ABRunnable = running;
    }
    

    void run()
    {
    }
    

    int getType()
    {
        return -1;
    }
}

