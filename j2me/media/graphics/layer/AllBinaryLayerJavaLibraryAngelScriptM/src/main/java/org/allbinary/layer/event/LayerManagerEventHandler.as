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
// package org.allbinary.layer.event

class LayerManagerEventHandler : BasicEventHandler
{
    BasicArrayList@ list_LayerManagerEventHandler;
    string CREATE;
    string DELETE;

    // Java field initializers run after the super constructor
    void jfields_LayerManagerEventHandler()
    {
    @this.list_LayerManagerEventHandler = BasicArrayListD().jinit_BasicArrayListD();
    this.CREATE = "Create";
    this.DELETE = "Delete";
    }
    

    LayerManagerEventHandler@ jinit_LayerManagerEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_LayerManagerEventHandler();
        return this;
    }
    

    void addListener(LayerManagerEventListener@ layerManagerEventListener)
    {
        if (!this.list_LayerManagerEventHandler.contains(layerManagerEventListener)) {
            this.list_LayerManagerEventHandler.add(layerManagerEventListener);
        }
    }
    

    void removeAllListeners()
    {
        this.list_LayerManagerEventHandler.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_LayerManagerEventHandler.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_LayerManagerEventHandler.size(); --index >= 0; ) {
            try {
                LayerManagerEventListener@ layerManagerEventListener = cast<LayerManagerEventListener>(this.list_LayerManagerEventHandler.objectArray[index]);
                layerManagerEventListener.onCreateLayerManagerEvent(cast<LayerManagerEvent>(eventObject));
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
    

    void fireDeleteEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_LayerManagerEventHandler.size(); --index >= 0; ) {
            try {
                LayerManagerEventListener@ layerManagerEventListener = cast<LayerManagerEventListener>(this.list_LayerManagerEventHandler.objectArray[index]);
                layerManagerEventListener.onDeleteLayerManagerEvent(cast<LayerManagerEvent>(eventObject));
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex1); }
            }
        }
        BasicArrayList@ eventListenerInterfaceList = this.eventListenerInterfaceList;
        EventListenerInterface@ eventListenerInterface;
        LayerManagerEventListenerInterface@ layerManagerEventListenerInterface;
        int listenerIndex = 0;
        while (listenerIndex < eventListenerInterfaceList.size()) {
            try {
                @eventListenerInterface = cast<EventListenerInterface>(eventListenerInterfaceList.objectArray[listenerIndex]);
                @layerManagerEventListenerInterface = (cast<LayerManagerEventListenerInterface>(eventListenerInterface));
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent(cast<LayerManagerEvent>(eventObject));
            } catch {
                Throwable@ jex2 = jcatch();
                if (cast<Exception>(jex2) !is null) {
                    Exception@ e = cast<Exception>(jex2);
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings::getInstance().FIRE_EVENT, e);
                }
                else { jthrow(jex2); }
            }
            listenerIndex++;
        }
    }
    

    void process(AllBinaryEventObject@ eventObject, EventListenerInterface@ eventListenerInterface)
    {
        LayerManagerEventListenerInterface@ layerManagerEventListenerInterface = (cast<LayerManagerEventListenerInterface>(eventListenerInterface));
        layerManagerEventListenerInterface.onCreateLayerManagerEvent(cast<LayerManagerEvent>(eventObject));
    }
}

namespace LayerManagerEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LayerManagerEventHandler().jinit_LayerManagerEventHandler();
    }

    LayerManagerEventHandler@ jcell_instance;
    LayerManagerEventHandler@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LayerManagerEventHandler@ value) property { jclinit(); @jcell_instance = value; }
    

    LayerManagerEventHandler@ getInstance()
    {
        return LayerManagerEventHandler::instance;
    }
}

