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
// package org.allbinary.game.terrain

class TerrainEventHandler : BasicEventHandler
{
    BasicArrayList@ list_TerrainEventHandler;

    // Java field initializers run after the super constructor
    void jfields_TerrainEventHandler()
    {
    @this.list_TerrainEventHandler = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    TerrainEventHandler@ jinit_TerrainEventHandler()
    {
        this.jinit_BasicEventHandler();
        this.jfields_TerrainEventHandler();
        return this;
    }
    

    void addListener(TerrainEventListener@ terrainEventListener)
    {
        if (!this.list_TerrainEventHandler.contains(terrainEventListener)) {
            this.list_TerrainEventHandler.add(terrainEventListener);
        }
    }
    

    void removeAllListeners()
    {
        this.list_TerrainEventHandler.clear();
        BasicEventHandler::removeAllListeners();
    }
    

    void removeListener(EventListenerInterface@ eventListenerInterface)
    {
        this.list_TerrainEventHandler.remove(eventListenerInterface);
        BasicEventHandler::removeListener(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject@ eventObject)
    {
        for (int index = this.list_TerrainEventHandler.size(); --index >= 0; ) {
            try {
                TerrainEventListener@ terrainEventListener = cast<TerrainEventListener>(this.list_TerrainEventHandler.get(index));
                terrainEventListener.onTerrainEvent(cast<TerrainEvent>(eventObject));
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
        TerrainEventListenerInterface@ terrainEventListenerInterface = cast<TerrainEventListenerInterface>(eventListenerInterface);
        terrainEventListenerInterface.onTerrainEvent(cast<TerrainEvent>(eventObject));
    }
}

namespace TerrainEventHandler
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_hashtable = StdUtil::getInstance().NULL_TABLE;
    }

    ABHashtable@ jcell_hashtable;
    ABHashtable@ get_hashtable() property { jclinit(); return jcell_hashtable; }
    void set_hashtable(ABHashtable@ value) property { jclinit(); @jcell_hashtable = value; }
    

    void init()
    {
        @TerrainEventHandler::hashtable = StdUtil::getInstance().createHashtable();
    }
    

    TerrainEventHandler@ getInstance(JObject@ anyType)
    {
        JObject@ eventHandlerCanBeNull = TerrainEventHandler::hashtable.get(anyType);
        if (eventHandlerCanBeNull is null) {
            @eventHandlerCanBeNull = TerrainEventHandler().jinit_TerrainEventHandler();
            TerrainEventHandler::hashtable.put(anyType, eventHandlerCanBeNull);
        }
        return cast<TerrainEventHandler>(eventHandlerCanBeNull);
    }
}

