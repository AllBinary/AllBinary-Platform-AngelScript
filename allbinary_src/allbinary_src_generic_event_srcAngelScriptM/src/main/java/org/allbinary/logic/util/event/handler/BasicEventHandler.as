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
    BasicArrayList@ eventListenerInterfaceList;

    // Java field initializers run after the super constructor
    void jfields_BasicEventHandler()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    BasicEventHandler@ jinit_BasicEventHandler()
    {
        this.jfields_BasicEventHandler();
        @this.eventListenerInterfaceList = BasicArrayListD().jinit_BasicArrayListD();
        return this;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        string LISTENER = " Listener: ";
        stringBuffer.append("Total Listeners: ");
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        EventListenerInterface@ eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.eventListenerInterfaceList.objectArray[index]);
                stringBuffer.append(LISTENER);
                stringBuffer.append(StringUtil::getInstance().toString(eventListenerInterface));
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                CommonStrings@ commonStrings = CommonStrings::getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e);
                }
                else { jthrow(jex0); }
            }
            index++;
        }
        return stringBuffer.toString();
    }
    

    void removeAllListeners()
    {
        @this.eventListenerInterfaceList = BasicArrayListD().jinit_BasicArrayListD();
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
        int index = 0;
        EventListenerInterface@ eventListenerInterface;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(this.eventListenerInterfaceList.objectArray[index]);
                this.process(eventObject, eventListenerInterface);
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                CommonStrings@ commonStrings = CommonStrings::getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex1); }
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
}

namespace BasicEventHandler
{
    const string PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
}

