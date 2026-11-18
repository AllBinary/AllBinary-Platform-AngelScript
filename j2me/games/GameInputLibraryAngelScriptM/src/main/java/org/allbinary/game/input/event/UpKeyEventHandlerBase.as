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

class UpKeyEventHandlerBase : BasicEventHandler
{
    BasicArrayList@ list_UpKeyEventHandlerBase;

    // Java field initializers run after the super constructor
    void jfields_UpKeyEventHandlerBase()
    {
    @this.list_UpKeyEventHandlerBase = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    UpKeyEventHandlerBase@ jinit_UpKeyEventHandlerBase()
    {
        this.jinit_BasicEventHandler();
        this.jfields_UpKeyEventHandlerBase();
        return this;
    }
    

    void addListener(PlayerGameInput@ playerGameInput)
    {
        if (!this.list_UpKeyEventHandlerBase.contains(playerGameInput)) {
            this.list_UpKeyEventHandlerBase.add(playerGameInput);
        }
    }
    

    void removeAllListeners()
    {
        this.list_UpKeyEventHandlerBase.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        this.list_UpKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListenerSingleThreaded(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_UpKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEventForInteger(JInteger@ eventObject)
    {
        for (int index = this.list_UpKeyEventHandlerBase.size(); --index >= 0; ) {
            try {
                PlayerGameInput@ playerGameInput = cast<PlayerGameInput>(this.list_UpKeyEventHandlerBase.objectArray[index]);
                playerGameInput.onUpKeyEvent(eventObject);
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex0); }
            }
        }
        int index = 0;
        EventListenerInterface@ eventListenerInterface;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.eventListenerInterfaceList.get(index));
                this.processForInteger(eventObject, eventListenerInterface);
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex1); }
            }
            index++;
        }
    }
    

    void processForInteger(JInteger@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        UpKeyEventListenerInterface@ upKeyEventListenerInterface = cast<UpKeyEventListenerInterface>(eventListenerInterface);
        upKeyEventListenerInterface.onUpKeyEvent(eventObject);
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(BasicEventHandler::toString());
        stringBuffer.append(UpKeyEventHandlerBase::TOTAL_LISTENERS);
        stringBuffer.appendint(this.list_UpKeyEventHandlerBase.size());
        for (int index = 0; index < this.list_UpKeyEventHandlerBase.size(); index++) {
            try {
                EventListenerInterface@ eventListenerInterface = cast<EventListenerInterface>(this.list_UpKeyEventHandlerBase.get(index));
                stringBuffer.append(UpKeyEventHandlerBase::LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch {
                Throwable@ jex2 = jcatch();
                if (cast<Exception>(jex2) !is null) {
                    Exception@ e = cast<Exception>(jex2);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
                }
                else { jthrow(jex2); }
            }
        }
        return stringBuffer.toString();
    }
}

namespace UpKeyEventHandlerBase
{
    const string TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    const string LISTENER_LABEL = " PlayerGameInput Listener: ";
}

