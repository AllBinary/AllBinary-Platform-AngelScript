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

class UpGameKeyEventHandlerBase : BasicEventHandler
{
    BasicArrayList@ list_UpGameKeyEventHandlerBase;

    // Java field initializers run after the super constructor
    void jfields_UpGameKeyEventHandlerBase()
    {
    @this.list_UpGameKeyEventHandlerBase = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    UpGameKeyEventHandlerBase@ jinit_UpGameKeyEventHandlerBase()
    {
        this.jinit_BasicEventHandler();
        this.jfields_UpGameKeyEventHandlerBase();
        return this;
    }
    

    void addListener(PlayerGameInput@ playerGameInput)
    {
        if (!this.list_UpGameKeyEventHandlerBase.contains(playerGameInput)) {
            this.list_UpGameKeyEventHandlerBase.add(playerGameInput);
        }
    }
    

    void removeAllListeners()
    {
        this.list_UpGameKeyEventHandlerBase.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        this.list_UpGameKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListenerSingleThreaded(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_UpGameKeyEventHandlerBase.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_UpGameKeyEventHandlerBase.size(); --index >= 0; ) {
            try {
                PlayerGameInput@ playerGameInput = cast<PlayerGameInput>(this.list_UpGameKeyEventHandlerBase.objectArray[index]);
                playerGameInput.onUpGameKeyEvent(cast<GameKeyEvent>(eventObject));
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
        UpGameKeyEventListenerInterface@ upGameKeyEventListenerInterface = cast<UpGameKeyEventListenerInterface>(eventListenerInterface);
        upGameKeyEventListenerInterface.onUpGameKeyEvent(cast<GameKeyEvent>(eventObject));
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        int size = this.list_UpGameKeyEventHandlerBase.size();
        stringBuffer.append(BasicEventHandler::toString());
        stringBuffer.append(UpGameKeyEventHandlerBase::TOTAL_LISTENERS);
        stringBuffer.appendint(size);
        for (int index = 0; index < size; index++) {
            try {
                EventListenerInterface@ eventListenerInterface = cast<EventListenerInterface>(this.list_UpGameKeyEventHandlerBase.get(index));
                stringBuffer.append(UpGameKeyEventHandlerBase::LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
                }
                else { jthrow(jex1); }
            }
        }
        return stringBuffer.toString();
    }
}

namespace UpGameKeyEventHandlerBase
{
    const string TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    const string LISTENER_LABEL = " PlayerGameInput Listener: ";
}

