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
// package org.allbinary.game.ag.layer.hud.basic.notification

class NoGameNotificationHudSingleton : JObjectBase
{
    LogUtil@ logUtil;
    GameNotificationHud@ gameNotificationHud_NoGameNotificationHudSingleton;

    // Java field initializers run after the super constructor
    void jfields_NoGameNotificationHudSingleton()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.gameNotificationHud_NoGameNotificationHudSingleton = GameNotificationHud::NULL_GAME_NOTIFICATION;
    }
    

    NoGameNotificationHudSingleton@ jinit_NoGameNotificationHudSingleton()
    {
        this.jfields_NoGameNotificationHudSingleton();
        try {
            BasicHudFactory@ basicHudFactory = BasicHudFactory::getInstance();
            @this.gameNotificationHud_NoGameNotificationHudSingleton = NoGameGameNotificationHud().jinit_NoGameGameNotificationHud();
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
    

    GameNotificationHud@ getGameNotificationHud()
    {
        return this.gameNotificationHud_NoGameNotificationHudSingleton;
    }
}

namespace NoGameNotificationHudSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoGameNotificationHudSingleton().jinit_NoGameNotificationHudSingleton();
    }

    NoGameNotificationHudSingleton@ jcell_instance;
    NoGameNotificationHudSingleton@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NoGameNotificationHudSingleton@ value) property { jclinit(); @jcell_instance = value; }
    

    NoGameNotificationHudSingleton@ getInstance()
    {
        return NoGameNotificationHudSingleton::instance;
    }
}

