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
// package org.allbinary.game.input.mapping

class MotionInputMappingEventListener : JObjectBase, InputMappingEventListenerInterface
{

    MotionInputMappingEventListener@ jinit_MotionInputMappingEventListener()
    {
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onInputMappingEvent(InputMappingEvent@ inputMappingEvent)
    {
        GameKeyCompleteMotionGestureInputEventFactory::getInstance().updateAll();
        BasicTouchInputFactory::getInstance().updateAll(inputMappingEvent.getInputToGameKeyMapping());
    }
}

