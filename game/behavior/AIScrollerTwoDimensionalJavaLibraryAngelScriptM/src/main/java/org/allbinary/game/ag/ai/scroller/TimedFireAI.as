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

class TimedFireAI : BasicAI
{
    TimeDelayHelper@ maxFireDelayTimeHelper;
    int delay_TimedFireAI;

    // Java field initializers run after the super constructor
    void jfields_TimedFireAI()
    {
    @this.maxFireDelayTimeHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    
    }
    

    TimedFireAI@ jinit_TimedFireAI(int delay, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_TimedFireAI();
        this.delay_TimedFireAI = delay;
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        TimeFiredInterface@ timeFiredInterface = cast<TimeFiredInterface>(this.getOwnerLayerInterface());
        if (this.maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory::getInstance().startTime) && timeFiredInterface.getLastFireTime() + this.maxFireDelayTimeHelper.delay < this.maxFireDelayTimeHelper.getStartTime()) {
            BasicAI::processKeyAI(Canvas::KEY_NUM1);
            this.maxFireDelayTimeHelper.delay = this.delay_TimedFireAI;
        }
    }
}

namespace TimedFireAI
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_TIME = SmallIntegerSingletonFactory::getInstance().getAt(1);
    }

    JInteger@ jcell_TIME;
    JInteger@ get_TIME() property { jclinit(); return jcell_TIME; }
    void set_TIME(JInteger@ value) property { jclinit(); @jcell_TIME = value; }
}

