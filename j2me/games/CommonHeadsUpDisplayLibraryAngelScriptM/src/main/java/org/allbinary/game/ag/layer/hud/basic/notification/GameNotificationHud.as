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

class GameNotificationHud : BasicHud, GameNotificationListenerInterface
{
    string METHOD_NAME_GameNotificationHud;
    GameNotificationEvent@ lastGameNotificationEvent_GameNotificationHud;

    // Java field initializers run after the super constructor
    void jfields_GameNotificationHud()
    {
    this.METHOD_NAME_GameNotificationHud = "onGameNotificationEvent";
    @this.lastGameNotificationEvent_GameNotificationHud = GameNotification::NULL_GAME_NOTIFICATION_EVENT;
    }
    

    GameNotificationHud@ jinit_GameNotificationHud(int location, int direction, int bufferZone, BasicColor@ basicColor)
    {
        this.jinit_BasicHud(location, direction, bufferZone, basicColor);
        this.jfields_GameNotificationHud();
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onGameNotificationEvent(GameNotificationEvent@ gameNotificationEvent)
    {
        if (this.lastGameNotificationEvent_GameNotificationHud !is gameNotificationEvent) {
            @this.lastGameNotificationEvent_GameNotificationHud = gameNotificationEvent;
            this.logUtil.putF(gameNotificationEvent.getString(), this, this.METHOD_NAME_GameNotificationHud);
        }
        this.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent());
    }
    

    void add(string string_, JInteger@ seconds, BasicColor@ basicColor, JBoolean@ permanent)
    {
    }
    

    void processTick()
    {
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    void clear()
    {
    }
}

namespace GameNotificationHud
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_GAME_NOTIFICATION = GameNotificationHud().jinit_GameNotificationHud(BasicHudFactory::getInstance().TOPCENTER, BasicHudFactory::getInstance().HORIZONTAL, 0, BasicColorFactory::getInstance().RED);
    }

    GameNotificationHud@ jcell_NULL_GAME_NOTIFICATION;
    GameNotificationHud@ get_NULL_GAME_NOTIFICATION() property { jclinit(); return jcell_NULL_GAME_NOTIFICATION; }
    void set_NULL_GAME_NOTIFICATION(GameNotificationHud@ value) property { jclinit(); @jcell_NULL_GAME_NOTIFICATION = value; }
}

