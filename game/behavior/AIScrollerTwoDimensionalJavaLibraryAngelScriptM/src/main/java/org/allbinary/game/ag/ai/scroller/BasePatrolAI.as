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

class BasePatrolAI : BasicAI
{
    JInteger@ maxDistance;
    int currentDistance;
    int xTotalDistance;
    int lastKeyDirection;
    int keyDirection;

    // Java field initializers run after the super constructor
    void jfields_BasePatrolAI()
    {
    
    
    
    this.lastKeyDirection = Canvas::RIGHT;
    this.keyDirection = Canvas::RIGHT;
    }
    

    BasePatrolAI@ jinit_BasePatrolAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_BasePatrolAI();
        @this.maxDistance = cast<JInteger>(hashtable.get(BasePatrolAI::MAX_DISTANCE));
        this.currentDistance = this.maxDistance.intValue();
        return this;
    }
    

    void update()
    {
        this.updateTotalDistance();
        this.changeDirectionIfReachedPacingAreaMax();
    }
    

    void updateTotalDistance()
    {
        VelocityInterfaceCompositeInterface@ velocityInterfaceCompositeInterface = cast<VelocityInterfaceCompositeInterface>(this.getOwnerLayerInterface());
        BasicVelocityProperties@ velocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.xTotalDistance += velocityProperties.getVelocityXBasicDecimalP().getScaled();
    }
    

    void changeDirectionIfReachedPacingAreaMax()
    {
        MathUtil@ mathUtil = MathUtil::getInstance();
        int totalDistance = mathUtil.abs(this.xTotalDistance);
        if (totalDistance > this.currentDistance) {
            this.nextDirection();
        }
    }
    

    void nextDirection()
    {
        if (this.lastKeyDirection == Canvas::LEFT) {
            this.keyDirection = Canvas::RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        } else if (this.lastKeyDirection == Canvas::RIGHT) {
            this.keyDirection = Canvas::LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        }
    }
    

    void disable()
    {
    }
}

namespace BasePatrolAI
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_MAX_DISTANCE = SmallIntegerSingletonFactory::getInstance().getAt(2);
        @jcell_DIRECTION_ARRAY = SmallIntegerSingletonFactory::getInstance().getAt(3);
        @jcell_FIRING_DISTANCE = SmallIntegerSingletonFactory::getInstance().getAt(4);
        @jcell_SPEED = SmallIntegerSingletonFactory::getInstance().getAt(5);
    }

    JInteger@ jcell_MAX_DISTANCE;
    JInteger@ get_MAX_DISTANCE() property { jclinit(); return jcell_MAX_DISTANCE; }
    void set_MAX_DISTANCE(JInteger@ value) property { jclinit(); @jcell_MAX_DISTANCE = value; }

    JInteger@ jcell_DIRECTION_ARRAY;
    JInteger@ get_DIRECTION_ARRAY() property { jclinit(); return jcell_DIRECTION_ARRAY; }
    void set_DIRECTION_ARRAY(JInteger@ value) property { jclinit(); @jcell_DIRECTION_ARRAY = value; }

    JInteger@ jcell_FIRING_DISTANCE;
    JInteger@ get_FIRING_DISTANCE() property { jclinit(); return jcell_FIRING_DISTANCE; }
    void set_FIRING_DISTANCE(JInteger@ value) property { jclinit(); @jcell_FIRING_DISTANCE = value; }

    JInteger@ jcell_SPEED;
    JInteger@ get_SPEED() property { jclinit(); return jcell_SPEED; }
    void set_SPEED(JInteger@ value) property { jclinit(); @jcell_SPEED = value; }
}

