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

class MotionGestureReceiveInterfaceFactory : JObjectBase
{

    MotionGestureReceiveInterfaceFactory@ jinit_MotionGestureReceiveInterfaceFactory()
    {
        return this;
    }
}

namespace MotionGestureReceiveInterfaceFactory
{
    

    CompleteMotionGestureListenerInterface@ getInstance()
    {
        MotionGestureConfiguration@ configuration = MotionGestureConfigurationFactory::getInstance();
        if (!configuration.isExecutingActionsAllowed()) {
            return NullCompleteMotionGestureReceiver().jinit_NullCompleteMotionGestureReceiver();
        } else {
            return ResolveCompleteMotionGestureListener().jinit_ResolveCompleteMotionGestureListener();
        }
        return null;
    }
}

