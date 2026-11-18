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
    int MIN;
    AllBinaryEventCircularPool@ eventPool;

    // Java field initializers run after the super constructor
    void jfields_MotionEventCircularPool()
    {
    this.MIN = TouchMotionGestureFactory::getInstance().LAST_MOTION.getId();
    @this.eventPool = AllBinaryEventCircularPool().jinit_AllBinaryEventCircularPool((InputFactory::getInstance().MAX - 1) - this.MIN);
    }
    

    MotionEventCircularPool@ jinit_MotionEventCircularPool(int id)
    {
        this.jfields_MotionEventCircularPool();
        this.eventPool.initAllBinaryEventCircularPool(MotionEventFactory().jinit_MotionEventFactory(this.eventPool, id));
        return this;
    }
    

    MotionGestureEvent@ getInstance(MotionGestureInput@ motionGestureInput)
    {
        return cast<MotionGestureEvent>(this.eventPool.getInstance(motionGestureInput.getId() - this.MIN));
    }
}

namespace MotionEventCircularPool
{
    

    MotionEventCircularPool@ createPool(int id)
    {
        return MotionEventCircularPool().jinit_MotionEventCircularPool(id);
    }
}

