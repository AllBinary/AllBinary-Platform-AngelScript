// Generated Code Do Not Modify
// package org.allbinary.game.terrain

class TerrainEventListener : JObjectBase, TerrainEventListenerInterface
{
    BasicArrayList@ list;

    // Java field initializers run after the super constructor
    void jfields_TerrainEventListener()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
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
        this.list.clear();
        this.list.add(terrainEvent);
    }
    

    BasicArrayList@ getList()
    {
        return this.list;
    }
}

