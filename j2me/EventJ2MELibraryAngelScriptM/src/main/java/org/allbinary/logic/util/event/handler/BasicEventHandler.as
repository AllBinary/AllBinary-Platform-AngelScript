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
// package org.allbinary.logic.util.event.handler

class BasicEventHandler : JObjectBase, BasicEventHandlerInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    EventStrings@ eventStrings;
    BasicArrayList@ eventListenerInterfaceList;

    // Java field initializers run after the super constructor
    void jfields_BasicEventHandler()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.eventStrings = EventStrings::getInstance();
    
    }
    

    BasicEventHandler@ jinit_BasicEventHandler()
    {
        this.jfields_BasicEventHandler();
        @this.eventListenerInterfaceList = BasicArrayListD().jinit_BasicArrayListD();
        return this;
    }
    

    void removeAllListeners()
    {
        @this.eventListenerInterfaceList = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    void addListeners(BasicArrayList@ vector)
    {
        EventListenerInterface@ eventListenerInterface;
        int size = vector.size();
        for (int index = 0; index < size; index++) {
            @eventListenerInterface = cast<EventListenerInterface>(vector.get(index));
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    void removeListeners(BasicArrayList@ vector)
    {
        EventListenerInterface@ eventListenerInterface;
        int size = vector.size();
        for (int index = 0; index < size; index++) {
            @eventListenerInterface = cast<EventListenerInterface>(vector.get(index));
            this.removeListener(eventListenerInterface);
        }
    }
    

    void addListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void addListenerInterface(EventListenerInterface@ eventListenerInterface)
    {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void removeListenerSingleThreaded(EventListenerInterface@ eventListenerInterface)
    {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        EventListenerInterface@ eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.eventListenerInterfaceList.get(index));
                this.process(eventObject, eventListenerInterface);
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.eventStrings.FIRE_EVENT, e);
                }
                else { jthrow(jex0); }
            }
            index++;
        }
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        eventListenerInterface.onEvent(eventObject);
    }
    

    BasicArrayList@ getEventListenerInterfaceListP()
    {
        return this.eventListenerInterfaceList;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.eventStrings.TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        EventListenerInterface@ eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.eventListenerInterfaceList.get(index));
                stringBuffer.append(this.eventStrings.LISTENER_LABEL);
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

