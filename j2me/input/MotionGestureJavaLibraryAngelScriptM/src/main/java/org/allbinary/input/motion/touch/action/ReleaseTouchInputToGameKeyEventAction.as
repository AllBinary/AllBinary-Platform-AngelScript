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

class ReleaseTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent
{
    GameKey@ NONE_ReleaseTouchInputToGameKeyEventAction;

    // Java field initializers run after the super constructor
    void jfields_ReleaseTouchInputToGameKeyEventAction()
    {
    @this.NONE_ReleaseTouchInputToGameKeyEventAction = GameKeyFactory::getInstance().NONE;
    }
    

    ReleaseTouchInputToGameKeyEventAction@ jinit_ReleaseTouchInputToGameKeyEventAction()
    {
        this.jinit_GameKeyCompleteMotionGestureInputEvent("Release Action", TouchMotionGestureFactory::getInstance().RELEASED, PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping());
        this.jfields_ReleaseTouchInputToGameKeyEventAction();
        try {
            this.setGameKey(this.NONE_ReleaseTouchInputToGameKeyEventAction);
            this.setGameKeyEvent(GameKeyEventFactory::getInstance().getInstanceForInput(this, this.NONE_ReleaseTouchInputToGameKeyEventAction));
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
        return this;
    }
    

    void update()
    {
    }
}

namespace ReleaseTouchInputToGameKeyEventAction
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
        if (ReleaseTouchInputToGameKeyEventAction::instance is NullUtil::getInstance().NULL_OBJECT) {
            @ReleaseTouchInputToGameKeyEventAction::instance = ReleaseTouchInputToGameKeyEventAction().jinit_ReleaseTouchInputToGameKeyEventAction();
        }
        return cast<GameKeyCompleteMotionGestureInputEvent>(ReleaseTouchInputToGameKeyEventAction::instance);
    }
}

