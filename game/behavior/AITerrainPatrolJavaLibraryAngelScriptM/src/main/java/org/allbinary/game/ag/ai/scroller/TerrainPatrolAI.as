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
// package org.allbinary.game.ag.ai.scroller

class TerrainPatrolAI : PacePatrolAI
{
    TerrainEventListener@ terrainEventListener_TerrainPatrolAI;
    Angle@ DOWN_TerrainPatrolAI;
    BasicTerrainInfo@ CLIFF_TerrainPatrolAI;

    // Java field initializers run after the super constructor
    void jfields_TerrainPatrolAI()
    {
    @this.terrainEventListener_TerrainPatrolAI = TerrainEventListener().jinit_TerrainEventListener();
    @this.DOWN_TerrainPatrolAI = AngleFactory::getInstance().DOWN;
    @this.CLIFF_TerrainPatrolAI = BasicTerrainInfo().jinit_BasicTerrainInfo(this.DOWN_TerrainPatrolAI);
    }
    

    TerrainPatrolAI@ jinit_TerrainPatrolAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_PacePatrolAI(hashtable, ownerLayerInterface, gameInput);
        this.jfields_TerrainPatrolAI();
        TerrainEventHandler::getInstance(ownerLayerInterface).addListener(this.terrainEventListener_TerrainPatrolAI);
        this.terrainEventListener_TerrainPatrolAI.onTerrainEvent(TerrainEventCircularStaticPool::getInstance().getNext(this.CLIFF_TerrainPatrolAI));
        return this;
    }
    

    void update()
    {
        PacePatrolAI::update();
        this.changeDirectionIfCliffReached();
    }
    

    void changeDirectionIfCliffReached()
    {
        BasicArrayList@ list = this.terrainEventListener_TerrainPatrolAI.getList();
        int size = list.size();
        for (int index = 0; index < size; index++) {
            TerrainEvent@ terrainEvent = cast<TerrainEvent>(list.removeAt(index));
            BasicTerrainInfo@ basicTerrainInfo = terrainEvent.getBasicTerrainInfo();
            Angle@ angle = basicTerrainInfo.getAngle();
            if (angle is this.DOWN_TerrainPatrolAI) {
                this.nextDirection();
                if (!this.isFollowLimitedByTerrain) {
                    this.logUtil.putF("Following Limited", this, "onTerrainEvent");
                    this.isFollowLimitedByTerrain = true;
                }
            }
        }
    }
}

