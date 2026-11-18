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

class DiagonalDownRightTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent
{
    

    DiagonalDownRightTouchInputToGameKeyEventAction@ jinit_DiagonalDownRightTouchInputToGameKeyEventAction()
    {
        this.jinit_GameKeyCompleteMotionGestureInputEvent("Diagonal Down Right Action", TouchMotionGestureFactory::getInstance().DIAGONAL_DOWN_RIGHT, PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping());
        return this;
    }
}

namespace DiagonalDownRightTouchInputToGameKeyEventAction
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
        if (DiagonalDownRightTouchInputToGameKeyEventAction::instance is NullUtil::getInstance().NULL_OBJECT) {
            @DiagonalDownRightTouchInputToGameKeyEventAction::instance = DiagonalDownRightTouchInputToGameKeyEventAction().jinit_DiagonalDownRightTouchInputToGameKeyEventAction();
        }
        return cast<GameKeyCompleteMotionGestureInputEvent>(DiagonalDownRightTouchInputToGameKeyEventAction::instance);
    }
}

