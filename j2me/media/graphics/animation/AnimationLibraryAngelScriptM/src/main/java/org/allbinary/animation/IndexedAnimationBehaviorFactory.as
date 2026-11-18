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

class IndexedAnimationBehaviorFactory : AnimationBehaviorFactory
{
    int64 frameDelayTime;
    int loopTotal;
    

    IndexedAnimationBehaviorFactory@ jinit_IndexedAnimationBehaviorFactory(int loopTotal, int64 frameDelayTime)
    {
        this.jinit_AnimationBehaviorFactory();
        this.loopTotal = loopTotal;
        this.frameDelayTime = frameDelayTime;
        return this;
    }
    

    AnimationBehavior@ getOrCreateInstance()
    {
        return IndexedAnimationBehavior().jinit_IndexedAnimationBehavior(this.loopTotal, this.frameDelayTime);
    }
}

