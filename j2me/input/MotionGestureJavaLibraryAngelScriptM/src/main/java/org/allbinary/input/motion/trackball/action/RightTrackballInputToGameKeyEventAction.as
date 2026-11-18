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
// package org.allbinary.input.motion.trackball.action

class RightTrackballInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent
{
    

    RightTrackballInputToGameKeyEventAction@ jinit_RightTrackballInputToGameKeyEventAction()
    {
        this.jinit_GameKeyCompleteMotionGestureInputEvent("Right Action", TrackballMotionGestureFactory::getInstance().RIGHT, PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping());
        return this;
    }
}

namespace RightTrackballInputToGameKeyEventAction
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
        if (RightTrackballInputToGameKeyEventAction::instance is NullUtil::getInstance().NULL_OBJECT) {
            @RightTrackballInputToGameKeyEventAction::instance = RightTrackballInputToGameKeyEventAction().jinit_RightTrackballInputToGameKeyEventAction();
        }
        return cast<GameKeyCompleteMotionGestureInputEvent>(RightTrackballInputToGameKeyEventAction::instance);
    }
}

