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

class ResolveCompleteMotionGestureListener : JObjectBase, CompleteMotionGestureListenerInterface
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_ResolveCompleteMotionGestureListener()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    ResolveCompleteMotionGestureListener@ jinit_ResolveCompleteMotionGestureListener()
    {
        this.jfields_ResolveCompleteMotionGestureListener();
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        this.logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", this, commonStrings.CONSTRUCTOR);
        CompleteMotionGestureInputEventHandler::getInstance().addListener(GameKeyFromMotionGestureEventListener().jinit_GameKeyFromMotionGestureEventListener());
        return this;
    }
    

    void onMotionGestureCompleted(BasicArrayList@ list)
    {
        MotionGestureConfiguration@ configuration = MotionGestureConfigurationFactory::getInstance();
        BasicArrayList@ commandActionsList = configuration.getAssociateCommandActionsList();
        int size = commandActionsList.size();
        for (int index = size - 1; index >= 0; index--) {
            MotionGestureToMotionGestureActionAssociation@ association = cast<MotionGestureToMotionGestureActionAssociation>(commandActionsList.objectArray[index]);
            if (association.isMotionGestureArrayEquals(list) == true) {
                GameKeyCompleteMotionGestureInputEvent@ completeMotionGestureInputEvent = cast<GameKeyCompleteMotionGestureInputEvent>(association.getCommandAction());
                CompleteMotionGestureInputEventHandler::getInstance().fireEvent(completeMotionGestureInputEvent);
                break;
            }
        }
    }
}

