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

class GameNotification : JObjectBase
{
    BasicArrayList@ stringList;
    BasicArrayList@ timeList;
    BasicArrayList@ colorList;

    // Java field initializers run after the super constructor
    void jfields_GameNotification()
    {
    @this.stringList = BasicArrayListD().jinit_BasicArrayListD();
    @this.timeList = BasicArrayListD().jinit_BasicArrayListD();
    @this.colorList = BasicArrayListD().jinit_BasicArrayListD();
    }

    GameNotification@ jinit_GameNotification()
    {
        this.jfields_GameNotification();
        return this;
    }
    

    void add(string string_, JInteger@ seconds, BasicColor@ basicColor)
    {
        if (!this.stringList.contains(jbox(string_))) {
            this.stringList.add(jbox(string_));
            this.timeList.add(seconds);
            this.colorList.add(basicColor);
        }
    }
    

    void clear()
    {
        this.stringList.clear();
        this.timeList.clear();
        this.colorList.clear();
    }
    

    int getSize()
    {
        return this.stringList.size();
    }
}

namespace GameNotification
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_GAME_NOTIFICATION_EVENT = GameNotificationEvent().jinit_GameNotificationEvent(NullUtil::getInstance().NULL_OBJECT, StringUtil::getInstance().EMPTY_STRING, JInteger().jinit_JInteger(0), BasicColorFactory::getInstance().RED, BooleanFactory::getInstance().FALSE);
    }

    GameNotificationEvent@ jcell_NULL_GAME_NOTIFICATION_EVENT;
    GameNotificationEvent@ get_NULL_GAME_NOTIFICATION_EVENT() property { jclinit(); return jcell_NULL_GAME_NOTIFICATION_EVENT; }
    void set_NULL_GAME_NOTIFICATION_EVENT(GameNotificationEvent@ value) property { jclinit(); @jcell_NULL_GAME_NOTIFICATION_EVENT = value; }
}

