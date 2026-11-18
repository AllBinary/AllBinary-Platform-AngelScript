/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class RawKeyEventHandler : JObjectBase
{
    LogUtil@ logUtil;
    BasicArrayList@ eventListenerInterfaceList;

    // Java field initializers run after the super constructor
    void jfields_RawKeyEventHandler()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    RawKeyEventHandler@ jinit_RawKeyEventHandler()
    {
        this.jfields_RawKeyEventHandler();
        @this.eventListenerInterfaceList = BasicArrayListD().jinit_BasicArrayListD();
        return this;
    }
    

    void removeAllListeners()
    {
        @this.eventListenerInterfaceList = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    void addListeners(BasicArrayList@ vector)
    {
        RawKeyEventListener@ eventListenerInterface;
        int size = vector.size();
        for (int index = 0; index < size; index++) {
            @eventListenerInterface = cast<RawKeyEventListener>(vector.get(index));
            this.addListener(eventListenerInterface);
        }
    }
    

    void addListenerSingleThreaded(RawKeyEventListener@ eventListenerInterface)
    {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void addListener(RawKeyEventListener@ eventListenerInterface)
    {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void removeListenerSingleThreaded(RawKeyEventListener@ eventListenerInterface)
    {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void removeListener(RawKeyEventListener@ eventListenerInterface)
    {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void fireEvent(int keyCode, int deviceId, bool repeated)
    {
        RawKeyEventListener@ eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<RawKeyEventListener>(this.eventListenerInterfaceList.get(index));
                this.process(keyCode, deviceId, repeated, eventListenerInterface);
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<Exception>(jex0) !is null) {
                    Exception@ e = cast<Exception>(jex0);
                CommonStrings@ commonStrings = CommonStrings::getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex0); }
            }
            index++;
        }
    }
    

    void process(int keyCode, int deviceId, bool repeated, RawKeyEventListener@ eventListenerInterface)
    {
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated);
    }
    

    BasicArrayList@ getEventListenerInterfaceListP()
    {
        return this.eventListenerInterfaceList;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(RawKeyEventHandler::TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        RawKeyEventListener@ eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<RawKeyEventListener>(this.eventListenerInterfaceList.get(index));
                stringBuffer.append(RawKeyEventHandler::LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                CommonStrings@ commonStrings = CommonStrings::getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e);
                }
                else { jthrow(jex1); }
            }
            index++;
        }
        return stringBuffer.toString();
    }
}

namespace RawKeyEventHandler
{
    const string TOTAL_LISTENERS = "Total Listeners: ";
    const string LISTENER_LABEL = " Listener: ";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = RawKeyEventHandler().jinit_RawKeyEventHandler();
        
        
    }

    RawKeyEventHandler@ jcell_instance;
    RawKeyEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(RawKeyEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    RawKeyEventHandler@ getInstance()
    {
        return RawKeyEventHandler::instance;
    }
}

