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
// package org.allbinary.game.ag.ai

class DiveAndDirectionalTrackingAI : BasicAI, TrackingEventListenerInterface, DestroyedEventListenerInterface
{
    MathUtil@ mathUtil_DiveAndDirectionalTrackingAI;
    DirectionFactory@ directionFactory_DiveAndDirectionalTrackingAI;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_DiveAndDirectionalTrackingAI;
    TimeDelayHelper@ timeDelayHelper_DiveAndDirectionalTrackingAI;
    BasicArrayList@ list_DiveAndDirectionalTrackingAI;
    DirectionalInterface@ directionalInterface_DiveAndDirectionalTrackingAI;
    BasicVelocityProperties@ velocityInterface_DiveAndDirectionalTrackingAI;
    int[]@ directionToKeyMap_DiveAndDirectionalTrackingAI;
    bool initialDropped_DiveAndDirectionalTrackingAI;
    bool diveP_DiveAndDirectionalTrackingAI;
    Direction@ directionOfTarget_DiveAndDirectionalTrackingAI;
    int MIN_DISTANCE_DiveAndDirectionalTrackingAI;
    AllBinaryLayer@ lastTrackingLayerInterface_DiveAndDirectionalTrackingAI;
    ArtificialIntelligenceInterface@ artificialIntelligenceInterface_DiveAndDirectionalTrackingAI;
    Visitor@ aiVistor_DiveAndDirectionalTrackingAI;
    Direction@ lastDirection_DiveAndDirectionalTrackingAI;

    // Java field initializers run after the super constructor
    void jfields_DiveAndDirectionalTrackingAI()
    {
    @this.mathUtil_DiveAndDirectionalTrackingAI = MathUtil::getInstance();
    @this.directionFactory_DiveAndDirectionalTrackingAI = DirectionFactory::getInstance();
    @this.gameTickTimeDelayHelper_DiveAndDirectionalTrackingAI = GameTickTimeDelayHelperFactory::getInstance();
    @this.timeDelayHelper_DiveAndDirectionalTrackingAI = TimeDelayHelper().jinit_TimeDelayHelper(500);
    @this.list_DiveAndDirectionalTrackingAI = BasicArrayListD().jinit_BasicArrayListD();
    
    
    @this.directionToKeyMap_DiveAndDirectionalTrackingAI = array<int> = {Canvas::LEFT, Canvas::DOWN, Canvas::UP, Canvas::RIGHT};
    
    
    @this.directionOfTarget_DiveAndDirectionalTrackingAI = Direction::getInstance(0);
    this.MIN_DISTANCE_DiveAndDirectionalTrackingAI = 40;
    @this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    
    
    @this.lastDirection_DiveAndDirectionalTrackingAI = DirectionFactory::getInstance().NO_DIRECTION;
    }
    

    DiveAndDirectionalTrackingAI@ jinit_DiveAndDirectionalTrackingAI(AllBinaryLayer@ ownerLayerInterface, ArtificialIntelligenceInterface@ artificialIntelligenceInterface, GameInput@ gameInput, Visitor@ visitor)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_DiveAndDirectionalTrackingAI();
        @this.aiVistor_DiveAndDirectionalTrackingAI = visitor;
        @this.artificialIntelligenceInterface_DiveAndDirectionalTrackingAI = artificialIntelligenceInterface;
        DirectionalCompositeInterface@ directionalCompositeInterface = cast<DirectionalCompositeInterface>(this.getOwnerLayerInterface());
        @this.directionalInterface_DiveAndDirectionalTrackingAI = directionalCompositeInterface.getDirectionalInterface();
        VelocityInterfaceCompositeInterface@ velocityInterfaceCompositeInterface = cast<VelocityInterfaceCompositeInterface>(this.getOwnerLayerInterface());
        @this.velocityInterface_DiveAndDirectionalTrackingAI = velocityInterfaceCompositeInterface.getVelocityProperties();
        DestroyedEventHandler::getInstance().addListenerInterface(this);
        this.init();
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.isBeyondTarget()) {
            this.init();
            this.velocityInterface_DiveAndDirectionalTrackingAI.zero();
        }
        if (!this.diveP_DiveAndDirectionalTrackingAI) {
            this.target(allBinaryLayerManager);
        } else {
            this.dive();
            this.attack();
        }
        this.list_DiveAndDirectionalTrackingAI.clear();
    }
    

    void init()
    {
        this.diveP_DiveAndDirectionalTrackingAI = false;
        @this.directionOfTarget_DiveAndDirectionalTrackingAI = DirectionFactory::getInstance().NOT_BORDERED_WITH;
        TrackingEventHandler::getInstance().addListenerInterface(this);
    }
    

    void target(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        if (this.list_DiveAndDirectionalTrackingAI.size() == 0) {
            return;
        }
        TrackingEvent@ lastTrackingEvent = cast<TrackingEvent>(this.list_DiveAndDirectionalTrackingAI.removeAt(0));
        @this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI = lastTrackingEvent.getLayerInterface();
        AllBinaryLayer@ layerInterface = this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI;
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        Group@[]@ groupArray = layerInterface.getGroupInterface();
        Group@[]@ ownerGroupArray = ownerLayerInterface.getGroupInterface();
        if (groupArray is ownerGroupArray) {
            return;
        }
        int x = this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI.getXP();
        int y = this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI.getYP();
        int yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight();
        int xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth();
        DirectionFactory@ directionFactory = DirectionFactory::getInstance();
        if (this.mathUtil_DiveAndDirectionalTrackingAI.abs(yDistance) > this.mathUtil_DiveAndDirectionalTrackingAI.abs(xDistance)) {
            if (yDistance > this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                @this.directionOfTarget_DiveAndDirectionalTrackingAI = directionFactory.UP;
            } else if (yDistance < -this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                @this.directionOfTarget_DiveAndDirectionalTrackingAI = directionFactory.DOWN;
            }
        } else {
            if (xDistance > this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                @this.directionOfTarget_DiveAndDirectionalTrackingAI = directionFactory.LEFT;
            } else if (xDistance < -this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                @this.directionOfTarget_DiveAndDirectionalTrackingAI = directionFactory.RIGHT;
            }
        }
        if (!this.initialDropped_DiveAndDirectionalTrackingAI && this.directionOfTarget_DiveAndDirectionalTrackingAI !is directionFactory.NOT_BORDERED_WITH) {
            this.drop();
        }
        if (this.initialDropped_DiveAndDirectionalTrackingAI) {
            if (this.directionOfTarget_DiveAndDirectionalTrackingAI is directionFactory.UP || this.directionOfTarget_DiveAndDirectionalTrackingAI is directionFactory.DOWN) {
                this.verticalTargeting(x);
            } else if (this.directionOfTarget_DiveAndDirectionalTrackingAI is directionFactory.LEFT || this.directionOfTarget_DiveAndDirectionalTrackingAI is directionFactory.RIGHT) {
                this.horizontalTargeting(y);
            } else {
                this.artificialIntelligenceInterface_DiveAndDirectionalTrackingAI.processAI(allBinaryLayerManager);
            }
        }
    }
    

    void verticalTargeting(int x)
    {
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP() < x) {
            this.moveRight();
        }
        if (ownerLayerInterface.getXP() > x) {
            this.moveLeft();
        }
        if (ownerLayerInterface.getXP() > x - 3 && ownerLayerInterface.getXP() < x + 3) {
            this.setDive();
        }
    }
    

    void horizontalTargeting(int y)
    {
        AllBinaryLayer@ ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getYP() < y) {
            this.moveDown();
        }
        if (ownerLayerInterface.getYP() > y) {
            this.moveUp();
        }
        if (ownerLayerInterface.getYP() > y - 3 && ownerLayerInterface.getYP() < y + 3) {
            this.setDive();
        }
    }
    

    void setDive()
    {
        this.diveP_DiveAndDirectionalTrackingAI = true;
        this.velocityInterface_DiveAndDirectionalTrackingAI.zero();
        TrackingEventHandler::getInstance().removeListener(this);
    }
    

    void moveRight()
    {
        this.setLastDirection(this.directionFactory_DiveAndDirectionalTrackingAI.RIGHT);
        this.directionalInterface_DiveAndDirectionalTrackingAI.setFrameByDirection(this.lastDirection_DiveAndDirectionalTrackingAI);
        this.aiVistor_DiveAndDirectionalTrackingAI.visit(this);
    }
    

    void moveLeft()
    {
        this.setLastDirection(this.directionFactory_DiveAndDirectionalTrackingAI.LEFT);
        this.directionalInterface_DiveAndDirectionalTrackingAI.setFrameByDirection(this.lastDirection_DiveAndDirectionalTrackingAI);
        this.aiVistor_DiveAndDirectionalTrackingAI.visit(this);
    }
    

    void moveDown()
    {
        this.setLastDirection(this.directionFactory_DiveAndDirectionalTrackingAI.DOWN);
        this.directionalInterface_DiveAndDirectionalTrackingAI.setFrameByDirection(this.lastDirection_DiveAndDirectionalTrackingAI);
        this.aiVistor_DiveAndDirectionalTrackingAI.visit(this);
    }
    

    void moveUp()
    {
        this.setLastDirection(this.directionFactory_DiveAndDirectionalTrackingAI.UP);
        this.directionalInterface_DiveAndDirectionalTrackingAI.setFrameByDirection(this.lastDirection_DiveAndDirectionalTrackingAI);
        this.aiVistor_DiveAndDirectionalTrackingAI.visit(this);
    }
    

    void dive()
    {
        this.directionalInterface_DiveAndDirectionalTrackingAI.setFrameByDirection(this.directionOfTarget_DiveAndDirectionalTrackingAI);
        this.aiVistor_DiveAndDirectionalTrackingAI.visit(this);
    }
    

    void attack()
    {
        BasicAI::processKeyAI(Canvas::KEY_NUM1);
    }
    

    void drop()
    {
        if (this.timeDelayHelper_DiveAndDirectionalTrackingAI.isTime(this.gameTickTimeDelayHelper_DiveAndDirectionalTrackingAI.startTime)) {
            this.initialDropped_DiveAndDirectionalTrackingAI = true;
            this.aiVistor_DiveAndDirectionalTrackingAI.visit(this);
        }
    }
    

    bool isBeyondTarget()
    {
        if (this.directionOfTarget_DiveAndDirectionalTrackingAI is this.directionFactory_DiveAndDirectionalTrackingAI.DOWN) {
            if (this.getOwnerLayerInterface().getYP() > this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI.getYP() + this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget_DiveAndDirectionalTrackingAI is this.directionFactory_DiveAndDirectionalTrackingAI.UP) {
            if (this.getOwnerLayerInterface().getYP() < this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI.getYP() + this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget_DiveAndDirectionalTrackingAI is this.directionFactory_DiveAndDirectionalTrackingAI.RIGHT) {
            if (this.getOwnerLayerInterface().getXP() > this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI.getXP() + this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget_DiveAndDirectionalTrackingAI is this.directionFactory_DiveAndDirectionalTrackingAI.LEFT) {
            if (this.getOwnerLayerInterface().getXP() < this.lastTrackingLayerInterface_DiveAndDirectionalTrackingAI.getXP() + this.MIN_DISTANCE_DiveAndDirectionalTrackingAI) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
        return false;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onMovement(TrackingEvent@ trackingEvent)
    {
        this.list_DiveAndDirectionalTrackingAI.add(trackingEvent);
    }
    

    void onDestroyed(DestroyedEvent@ destroyedEvent)
    {
        if (this.getOwnerLayerInterface() is destroyedEvent.getLayerInterface()) {
            TrackingEventHandler::getInstance().removeListener(this);
            DestroyedEventHandler::getInstance().removeListener(this);
        }
    }
    

    void setLastDirection(Direction@ lastDirection)
    {
        @this.lastDirection_DiveAndDirectionalTrackingAI = lastDirection;
        int value = this.getLastDirection().getValue();
        if (value < 4) {
            BasicAI::setLastKey(this.directionToKeyMap_DiveAndDirectionalTrackingAI[value]);
        }
    }
    

    void setLastKey(int lastKey)
    {
        BasicAI::setLastKey(lastKey);
        if (this.getLastKey() == Canvas::LEFT) {
            @this.lastDirection_DiveAndDirectionalTrackingAI = DirectionFactory::getInstance().LEFT;
        } else if (this.getLastKey() == Canvas::DOWN) {
            @this.lastDirection_DiveAndDirectionalTrackingAI = DirectionFactory::getInstance().DOWN;
        } else if (this.getLastKey() == Canvas::UP) {
            @this.lastDirection_DiveAndDirectionalTrackingAI = DirectionFactory::getInstance().UP;
        } else if (this.getLastKey() == Canvas::RIGHT) {
            @this.lastDirection_DiveAndDirectionalTrackingAI = DirectionFactory::getInstance().RIGHT;
        }
    }
    

    Direction@ getLastDirection()
    {
        return this.lastDirection_DiveAndDirectionalTrackingAI;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(BasicAI::toString());
        stringBuffer.append(" LastDirection: ");
        stringBuffer.append(StringUtil::getInstance().toString(this.getLastDirection()));
        return stringBuffer.toString();
    }
}

