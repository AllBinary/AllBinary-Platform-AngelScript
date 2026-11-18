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

class PacePatrolAI : BasePatrolAI, TrackingEventListenerInterface
{
    BasicArrayList@ trackingList_PacePatrolAI;
    int firingDistance_PacePatrolAI;
    bool isFollowLimitedByTerrain;

    // Java field initializers run after the super constructor
    void jfields_PacePatrolAI()
    {
    
    
    this.isFollowLimitedByTerrain = false;
    }
    

    PacePatrolAI@ jinit_PacePatrolAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasePatrolAI(hashtable, ownerLayerInterface, gameInput);
        this.jfields_PacePatrolAI();
        TrackingEventHandler::getInstance().addListenerInterface(this);
        @this.trackingList_PacePatrolAI = BasicArrayListD().jinit_BasicArrayListD();
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        this.update();
        Direction@ direction = this.setFiringDirectionForTargetIfInRange();
        DirectionFactory@ directionFactory = DirectionFactory::getInstance();
        if (direction is directionFactory.LEFT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                BasePatrolAI::processKeyAI(Canvas::LEFT);
            }
            this.keyDirection = Canvas::LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            BasePatrolAI::processKeyAI(Canvas::KEY_NUM1);
        } else if (direction is directionFactory.RIGHT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                BasePatrolAI::processKeyAI(Canvas::RIGHT);
            }
            this.keyDirection = Canvas::RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            BasePatrolAI::processKeyAI(Canvas::KEY_NUM1);
        } else {
            BasePatrolAI::processKeyAI(this.keyDirection);
        }
    }
    

    Direction@ setFiringDirectionForTargetIfInRange()
    {
        DirectionFactory@ directionFactory = DirectionFactory::getInstance();
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        Direction@ direction = directionFactory.NOT_BORDERED_WITH;
        TrackingEvent@ lastTrackingEvent;
        LayerInterface@ lastTrackingLayerInterface;
        DirectionCompositeInterface@ directionCompositeInterface;
        int size = this.trackingList_PacePatrolAI.size();
        for (int index = 0; index < size; index++) {
            @lastTrackingEvent = cast<TrackingEvent>(this.trackingList_PacePatrolAI.get(0));
            @lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface();
            int x = lastTrackingLayerInterface.getXP();
            int y = lastTrackingLayerInterface.getYP();
            int yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight();
            int xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth();
            int absXDistance = Math::abs(xDistance);
            int absYDistance = Math::abs(yDistance);
            if (absYDistance <= 100) {
                if (absXDistance < this.getFiringDistance() / 2) {
                    @directionCompositeInterface = cast<DirectionCompositeInterface>(this.getOwnerLayerInterface());
                    if (xDistance < 0 && directionCompositeInterface.getDirection() is directionFactory.RIGHT) {
                        @direction = directionFactory.RIGHT;
                    } else if (xDistance > 0 && directionCompositeInterface.getDirection() is directionFactory.LEFT) {
                        @direction = directionFactory.LEFT;
                    }
                }
            }
        }
        return direction;
    }
    

    void disable()
    {
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onMovement(TrackingEvent@ trackingEvent)
    {
        this.trackingList_PacePatrolAI.clear();
        this.trackingList_PacePatrolAI.add(trackingEvent);
    }
    

    int getFiringDistance()
    {
        return this.firingDistance_PacePatrolAI;
    }
    

    void setFiringDistance(int firingDistance)
    {
        this.firingDistance_PacePatrolAI = firingDistance;
    }
}

