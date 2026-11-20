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

class MotionGestureToMotionGestureActionAssociation : JObjectBase
{
    BasicArrayList@ list_MotionGestureToMotionGestureActionAssociation;
    CompleteMotionGestureInputEvent@ motionGestureAction_MotionGestureToMotionGestureActionAssociation;
    

    MotionGestureToMotionGestureActionAssociation@ jinit_MotionGestureToMotionGestureActionAssociation(BasicArrayList@ list, CompleteMotionGestureInputEvent@ commandAction)
    {
        @this.list_MotionGestureToMotionGestureActionAssociation = list;
        @this.motionGestureAction_MotionGestureToMotionGestureActionAssociation = commandAction;
        return this;
    }
    

    BasicArrayList@ getMotionGesture()
    {
        return this.list_MotionGestureToMotionGestureActionAssociation;
    }
    

    void setMotionGestures(BasicArrayList@ list)
    {
        @this.list_MotionGestureToMotionGestureActionAssociation = list;
    }
    

    CompleteMotionGestureInputEvent@ getCommandAction()
    {
        return this.motionGestureAction_MotionGestureToMotionGestureActionAssociation;
    }
    

    void setMotionGestureAction(CompleteMotionGestureInputEvent@ commandAction)
    {
        @this.motionGestureAction_MotionGestureToMotionGestureActionAssociation = commandAction;
    }
    

    bool isMotionGestureArrayEquals(BasicArrayList@ aList)
    {
        int size = aList.size();
        if (this.list_MotionGestureToMotionGestureActionAssociation.size() != size) {
            return false;
        }
        for (int i = size - 1; i >= 0; i--) {
            if (aList.objectArray[i] !is this.list_MotionGestureToMotionGestureActionAssociation.objectArray[i]) {
                return false;
            }
        }
        return true;
    }
}

