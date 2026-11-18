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
// package org.allbinary.input.motion.touch.action

class DiagonalDownLeftTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent
{
    

    DiagonalDownLeftTouchInputToGameKeyEventAction@ jinit_DiagonalDownLeftTouchInputToGameKeyEventAction()
    {
        this.jinit_GameKeyCompleteMotionGestureInputEvent("Diagonal Down Left Action", TouchMotionGestureFactory::getInstance().DIAGONAL_DOWN_LEFT, PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping());
        return this;
    }
}

namespace DiagonalDownLeftTouchInputToGameKeyEventAction
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_instance;
    JObject@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(JObject@ value) property { jclinit(); @jcell_instance = value; }
    

    GameKeyCompleteMotionGestureInputEvent@ getInstance()
    {
        if (DiagonalDownLeftTouchInputToGameKeyEventAction::instance is NullUtil::getInstance().NULL_OBJECT) {
            @DiagonalDownLeftTouchInputToGameKeyEventAction::instance = DiagonalDownLeftTouchInputToGameKeyEventAction().jinit_DiagonalDownLeftTouchInputToGameKeyEventAction();
        }
        return cast<GameKeyCompleteMotionGestureInputEvent>(DiagonalDownLeftTouchInputToGameKeyEventAction::instance);
    }
}

