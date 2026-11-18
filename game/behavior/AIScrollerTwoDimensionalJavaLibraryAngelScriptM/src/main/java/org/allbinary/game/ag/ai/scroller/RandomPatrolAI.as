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

class RandomPatrolAI : BasePatrolAI
{
    bool changedDirection_RandomPatrolAI;

    // Java field initializers run after the super constructor
    void jfields_RandomPatrolAI()
    {
    this.changedDirection_RandomPatrolAI = true;
    }
    

    RandomPatrolAI@ jinit_RandomPatrolAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasePatrolAI(hashtable, ownerLayerInterface, gameInput);
        this.jfields_RandomPatrolAI();
        this.updateRandomDistance();
        return this;
    }
    

    void updateRandomDistance()
    {
        this.currentDistance = MyRandomFactory::getInstance().getAbsoluteNextInt(this.maxDistance.intValue());
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        BasePatrolAI::update();
        BasePatrolAI::processKeyAI(this.keyDirection);
        if (this.changedDirection_RandomPatrolAI) {
            BasePatrolAI::processKeyAI(Canvas::KEY_NUM1);
            this.updateRandomDistance();
            this.changedDirection_RandomPatrolAI = false;
        }
    }
    

    void nextDirection()
    {
        BasePatrolAI::nextDirection();
        this.changedDirection_RandomPatrolAI = true;
    }
}

