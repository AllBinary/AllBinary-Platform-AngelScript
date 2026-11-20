// Generated Code Do Not Modify
// package org.allbinary.game.terrain

class TerrainEventListener : JObjectBase, TerrainEventListenerInterface
{
    BasicArrayList@ list_TerrainEventListener;

    // Java field initializers run after the super constructor
    void jfields_TerrainEventListener()
    {
    @this.list_TerrainEventListener = BasicArrayListD().jinit_BasicArrayListD();
    }

    TerrainEventListener@ jinit_TerrainEventListener()
    {
        this.jfields_TerrainEventListener();
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onTerrainEvent(TerrainEvent@ terrainEvent)
    {
        this.list_TerrainEventListener.clear();
        this.list_TerrainEventListener.add(terrainEvent);
    }
    

    BasicArrayList@ getList()
    {
        return this.list_TerrainEventListener;
    }
}

