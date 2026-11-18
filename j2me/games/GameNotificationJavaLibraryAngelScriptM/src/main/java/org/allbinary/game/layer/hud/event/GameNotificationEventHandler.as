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
// package org.allbinary.game.layer.hud.event

class GameNotificationEventHandler : BasicEventHandler
{
    bool enabled;

    // Java field initializers run after the super constructor
    void jfields_GameNotificationEventHandler()
    {
    this.enabled = true;
    }
    

    GameNotificationEventHandler@ jinit_GameNotificationEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_GameNotificationEventHandler();
        return this;
    }
    

    void removeAllListeners()
    {
        EventListenerInterface@ eventListenerInterface = NullEventListener::NULL_EVENT_LISTENER;
        BasicArrayList@ list = this.eventListenerInterfaceList;
        if (list.size() > 0) {
            @eventListenerInterface = cast<EventListenerInterface>(list.objectArray[0]);
        }
        BasicEventHandler::removeAllListeners();
        if (eventListenerInterface !is NullEventListener::NULL_EVENT_LISTENER) {
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        if (!this.enabled) {
            return;
        }
        GameNotificationListenerInterface@ gameNotificationListenerInterface = cast<GameNotificationListenerInterface>(eventListenerInterface);
        gameNotificationListenerInterface.onGameNotificationEvent(cast<GameNotificationEvent>(eventObject));
    }
}

namespace GameNotificationEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameNotificationEventHandler().jinit_GameNotificationEventHandler();
    }

    GameNotificationEventHandler@ jcell_instance;
    GameNotificationEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameNotificationEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    GameNotificationEventHandler@ getInstance()
    {
        return GameNotificationEventHandler::instance;
    }
}

