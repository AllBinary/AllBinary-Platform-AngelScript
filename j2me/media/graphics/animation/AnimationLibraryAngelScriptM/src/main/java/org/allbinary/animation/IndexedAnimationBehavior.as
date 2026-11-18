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
// package org.allbinary.animation

class IndexedAnimationBehavior : AnimationBehavior
{
    int64 frameDelayTime;
    int loopTotal;
    int64 elapsedTime;
    int loopIndex;
    

    IndexedAnimationBehavior@ jinit_IndexedAnimationBehavior(int loopTotal, int64 frameDelayTime)
    {
        this.jinit_AnimationBehavior();
        this.loopTotal = loopTotal;
        this.frameDelayTime = frameDelayTime;
        return this;
    }
    

    void reset()
    {
        this.loopIndex = 0;
    }
}

