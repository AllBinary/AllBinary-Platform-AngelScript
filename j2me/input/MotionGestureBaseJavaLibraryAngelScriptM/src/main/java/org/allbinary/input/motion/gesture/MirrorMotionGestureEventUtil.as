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
// package org.allbinary.input.motion.gesture

class MirrorMotionGestureEventUtil : JObjectBase
{
    MotionEventCircularPool@ motionEventCircularPool_MirrorMotionGestureEventUtil;
    

    MirrorMotionGestureEventUtil@ jinit_MirrorMotionGestureEventUtil()
    {
        @this.motionEventCircularPool_MirrorMotionGestureEventUtil = MotionEventCircularPool::createPool(Integer::MAX_VALUE);
        return this;
    }
    

    MotionGestureEvent@ mirrorVerticle(MotionGestureEvent@ motionGestureEvent, int halfWidth)
    {
        MotionGestureEvent@ event = this.motionEventCircularPool_MirrorMotionGestureEventUtil.getInstance(motionGestureEvent.getMotionGesture());
        int previousNewX = this.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth);
        int currentNewX = this.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth);
        PointFactory@ pointFactory = PointFactory::getInstance();
        GPoint@ mirroredPreviousPoint = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY());
        GPoint@ mirroredCurrentPoint = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY());
        event.setPreviousPoint(mirroredPreviousPoint);
        event.setCurrentPoint(mirroredCurrentPoint);
        return event;
    }
    

    int getNewX(int x, int halfWidth)
    {
        int newX = 0;
        if (x > halfWidth) {
            newX = halfWidth - (x - halfWidth);
        } else {
            newX = halfWidth + (halfWidth - x);
        }
        return newX;
    }
}

namespace MirrorMotionGestureEventUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MirrorMotionGestureEventUtil().jinit_MirrorMotionGestureEventUtil();
    }

    MirrorMotionGestureEventUtil@ jcell_instance;
    MirrorMotionGestureEventUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MirrorMotionGestureEventUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    MirrorMotionGestureEventUtil@ getInstance()
    {
        return MirrorMotionGestureEventUtil::instance;
    }
}

