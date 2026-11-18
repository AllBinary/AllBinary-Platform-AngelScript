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

class DownKeyEventHandlerBase : BasicEventHandler
{
    BasicArrayList@ list_DownKeyEventHandlerBase;

    // Java field initializers run after the super constructor
    void jfields_DownKeyEventHandlerBase()
    {
    @this.list_DownKeyEventHandlerBase = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    DownKeyEventHandlerBase@ jinit_DownKeyEventHandlerBase()
    {
        this.jinit_BasicEventHandler();
        this.jfields_DownKeyEventHandlerBase();
        return this;
    }
    

    void addListener(PlayerGameInput@ playerGameInput)
    {
        if (!this.list_DownKeyEventHandlerBase.contains(playerGameInput)) {
            this.list_DownKeyEventHandlerBase.add(playerGameInput);
        }
    }
    

    void removeAllListeners()
    {
        this.list_DownKeyEventHandlerBase.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        this.list_DownKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListenerSingleThreaded(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_DownKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEventI(JInteger@ eventObject)
    {
        for (int index = this.list_DownKeyEventHandlerBase.size(); --index >= 0; ) {
            try {
                PlayerGameInput@ playerGameInput = cast<PlayerGameInput>(this.list_DownKeyEventHandlerBase.objectArray[index]);
                playerGameInput.onDownKey(eventObject);
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
                this.processI(eventObject, eventListenerInterface);
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
    

    void fireEventForGameKeyEvent(GameKeyEvent@ eventObject)
    {
        int size = this.list_DownKeyEventHandlerBase.size();
        for (int index = size; --index >= 0; ) {
            try {
                PlayerGameInput@ playerGameInput = cast<PlayerGameInput>(this.list_DownKeyEventHandlerBase.objectArray[index]);
                playerGameInput.onDownKeyEvent(eventObject);
            } catch {
                Throwable@ jex2 = jcatch();
                if (cast<Exception>(jex2) !is null) {
                    Exception@ e = cast<Exception>(jex2);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex2); }
            }
        }
        int index = 0;
        EventListenerInterface@ eventListenerInterface;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.eventListenerInterfaceList.get(index));
                this.processEvent(eventObject, eventListenerInterface);
            } catch {
                Throwable@ jex3 = jcatch();
                if (cast<Exception>(jex3) !is null) {
                    Exception@ e = cast<Exception>(jex3);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex3); }
            }
            index++;
        }
    }
    

    void processI(JInteger@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        DownKeyEventListenerInterface@ downKeyEventListenerInterface = cast<DownKeyEventListenerInterface>(eventListenerInterface);
        downKeyEventListenerInterface.onDownKey(eventObject);
    }
    

    void processEvent(GameKeyEvent@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        DownKeyEventListenerInterface@ downKeyEventListenerInterface = cast<DownKeyEventListenerInterface>(eventListenerInterface);
        downKeyEventListenerInterface.onDownKeyEvent(eventObject);
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(BasicEventHandler::toString());
        stringBuffer.append(DownKeyEventHandlerBase::TOTAL_LISTENERS);
        stringBuffer.appendint(this.list_DownKeyEventHandlerBase.size());
        EventListenerInterface@ eventListenerInterface;
        for (int index = 0; index < this.list_DownKeyEventHandlerBase.size(); index++) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.list_DownKeyEventHandlerBase.get(index));
                stringBuffer.append(DownKeyEventHandlerBase::LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch {
                Throwable@ jex4 = jcatch();
                if (cast<Exception>(jex4) !is null) {
                    Exception@ e = cast<Exception>(jex4);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
                }
                else { jthrow(jex4); }
            }
        }
        return stringBuffer.toString();
    }
}

namespace DownKeyEventHandlerBase
{
    const string TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    const string LISTENER_LABEL = " PlayerGameInput Listener: ";
}

