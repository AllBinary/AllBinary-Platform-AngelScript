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
// package org.allbinary.input.motion.gesture.observer

class MotionEventCircularPool : JObjectBase
{
    int MIN_MotionEventCircularPool;
    AllBinaryEventCircularPool@ eventPool_MotionEventCircularPool;

    // Java field initializers run after the super constructor
    void jfields_MotionEventCircularPool()
    {
    this.MIN_MotionEventCircularPool = TouchMotionGestureFactory::getInstance().LAST_MOTION.getId();
    @this.eventPool_MotionEventCircularPool = AllBinaryEventCircularPool().jinit_AllBinaryEventCircularPool((InputFactory::getInstance().MAX - 1) - this.MIN_MotionEventCircularPool);
    }
    

    MotionEventCircularPool@ jinit_MotionEventCircularPool(int id)
    {
        this.jfields_MotionEventCircularPool();
        this.eventPool_MotionEventCircularPool.initAllBinaryEventCircularPool(MotionEventFactory().jinit_MotionEventFactory(this.eventPool_MotionEventCircularPool, id));
        return this;
    }
    

    MotionGestureEvent@ getInstance(MotionGestureInput@ motionGestureInput)
    {
        return cast<MotionGestureEvent>(this.eventPool_MotionEventCircularPool.getInstance(motionGestureInput.getId() - this.MIN_MotionEventCircularPool));
    }
}

namespace MotionEventCircularPool
{
    

    MotionEventCircularPool@ createPool(int id)
    {
        return MotionEventCircularPool().jinit_MotionEventCircularPool(id);
    }
}

