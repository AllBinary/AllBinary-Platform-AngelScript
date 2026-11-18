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

class DownGameKeyEventHandlerBase : BasicEventHandler
{
    BasicArrayList@ list_DownGameKeyEventHandlerBase;

    // Java field initializers run after the super constructor
    void jfields_DownGameKeyEventHandlerBase()
    {
    @this.list_DownGameKeyEventHandlerBase = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    DownGameKeyEventHandlerBase@ jinit_DownGameKeyEventHandlerBase()
    {
        this.jinit_BasicEventHandler();
        this.jfields_DownGameKeyEventHandlerBase();
        return this;
    }
    

    void addListener(PlayerGameInput@ playerGameInput)
    {
        if (!this.list_DownGameKeyEventHandlerBase.contains(playerGameInput)) {
            this.list_DownGameKeyEventHandlerBase.add(playerGameInput);
        }
    }
    

    void removeAllListeners()
    {
        this.list_DownGameKeyEventHandlerBase.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        this.list_DownGameKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListenerSingleThreaded(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_DownGameKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_DownGameKeyEventHandlerBase.size(); --index >= 0; ) {
            try {
                PlayerGameInput@ playerGameInput = cast<PlayerGameInput>(this.list_DownGameKeyEventHandlerBase.objectArray[index]);
                playerGameInput.onDownGameKeyEvent(cast<GameKeyEvent>(eventObject));
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
        DownGameKeyEventListenerInterface@ downGameKeyEventListenerInterface = cast<DownGameKeyEventListenerInterface>(eventListenerInterface);
        downGameKeyEventListenerInterface.onDownGameKeyEvent(cast<GameKeyEvent>(eventObject));
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(BasicEventHandler::toString());
        stringBuffer.append(DownGameKeyEventHandlerBase::TOTAL_LISTENERS);
        stringBuffer.appendint(this.list_DownGameKeyEventHandlerBase.size());
        EventListenerInterface@ eventListenerInterface;
        int size = this.list_DownGameKeyEventHandlerBase.size();
        int index = 0;
        while (index < size) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.list_DownGameKeyEventHandlerBase.get(index));
                stringBuffer.append(DownGameKeyEventHandlerBase::LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
                }
                else { jthrow(jex1); }
            }
            index++;
        }
        return stringBuffer.toString();
    }
}

namespace DownGameKeyEventHandlerBase
{
    const string TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    const string LISTENER_LABEL = " PlayerGameInput Listener: ";
}

