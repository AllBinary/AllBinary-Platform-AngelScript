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
// package org.allbinary.game.input.event

class PressGameKeyEventHandler : BasicEventHandler
{
    BasicArrayList@ list_PressGameKeyEventHandler;

    // Java field initializers run after the super constructor
    void jfields_PressGameKeyEventHandler()
    {
    @this.list_PressGameKeyEventHandler = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    PressGameKeyEventHandler@ jinit_PressGameKeyEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_PressGameKeyEventHandler();
        return this;
    }
    

    void addListener(PlayerGameInput@ playerGameInput)
    {
        if (!this.list_PressGameKeyEventHandler.contains(playerGameInput)) {
            this.list_PressGameKeyEventHandler.add(playerGameInput);
        }
    }
    

    void removeAllListeners()
    {
        this.list_PressGameKeyEventHandler.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_PressGameKeyEventHandler.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_PressGameKeyEventHandler.size(); --index >= 0; ) {
            try {
                PlayerGameInput@ playerGameInput = cast<PlayerGameInput>(this.list_PressGameKeyEventHandler.objectArray[index]);
                playerGameInput.onPressGameKeyEvent(cast<GameKeyEvent>(eventObject));
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex0); }
            }
        }
        BasicEventHandler::fireEvent(eventObject);
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        PressGameKeyEventListenerInterface@ pressGameKeyEventListenerInterface = (cast<PressGameKeyEventListenerInterface>(eventListenerInterface));
        pressGameKeyEventListenerInterface.onPressGameKeyEvent(cast<GameKeyEvent>(eventObject));
    }
}

namespace PressGameKeyEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PressGameKeyEventHandler().jinit_PressGameKeyEventHandler();
    }

    PressGameKeyEventHandler@ jcell_instance;
    PressGameKeyEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PressGameKeyEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    PressGameKeyEventHandler@ getInstance()
    {
        return PressGameKeyEventHandler::instance;
    }
}

