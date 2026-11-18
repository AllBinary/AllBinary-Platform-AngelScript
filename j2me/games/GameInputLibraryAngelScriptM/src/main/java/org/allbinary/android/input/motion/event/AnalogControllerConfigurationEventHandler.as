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
// package org.allbinary.android.input.motion.event

class AnalogControllerConfigurationEventHandler : BasicEventHandler
{
    BasicArrayList@ list_AnalogControllerConfigurationEventHandler;

    // Java field initializers run after the super constructor
    void jfields_AnalogControllerConfigurationEventHandler()
    {
    @this.list_AnalogControllerConfigurationEventHandler = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    AnalogControllerConfigurationEventHandler@ jinit_AnalogControllerConfigurationEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_AnalogControllerConfigurationEventHandler();
        return this;
    }
    

    void addListener(AnalogControllerConfigurationEventListenerInterface@ analogControllerConfigurationEventListenerInterface)
    {
        if (!this.list_AnalogControllerConfigurationEventHandler.contains(analogControllerConfigurationEventListenerInterface)) {
            this.list_AnalogControllerConfigurationEventHandler.add(analogControllerConfigurationEventListenerInterface);
        }
    }
    

    void removeAllListeners()
    {
        this.list_AnalogControllerConfigurationEventHandler.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_AnalogControllerConfigurationEventHandler.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_AnalogControllerConfigurationEventHandler.size(); --index >= 0; ) {
            try {
                AnalogControllerConfigurationEventListenerInterface@ playerGameInput = cast<AnalogControllerConfigurationEventListenerInterface>(this.list_AnalogControllerConfigurationEventHandler.objectArray[index]);
                playerGameInput.onAnalogControllerConfigurationEvent(cast<AnalogControllerConfigurationEvent>(eventObject));
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
        AnalogControllerConfigurationEventListenerInterface@ analogControllerConfigurationEventListenerInterface = (cast<AnalogControllerConfigurationEventListenerInterface>(eventListenerInterface));
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent(cast<AnalogControllerConfigurationEvent>(eventObject));
    }
}

namespace AnalogControllerConfigurationEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AnalogControllerConfigurationEventHandler().jinit_AnalogControllerConfigurationEventHandler();
    }

    AnalogControllerConfigurationEventHandler@ jcell_instance;
    AnalogControllerConfigurationEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AnalogControllerConfigurationEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    AnalogControllerConfigurationEventHandler@ getInstance()
    {
        return AnalogControllerConfigurationEventHandler::instance;
    }
}

