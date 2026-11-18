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

class HorizontalScreenPatrolAI : BasicAI
{
    int keyDirection;
    DisplayInfoSingleton@ displayInfoSingleton_HorizontalScreenPatrolAI;
    int firingX_HorizontalScreenPatrolAI;
    int firedIndex_HorizontalScreenPatrolAI;
    int MAX_FIRE_HorizontalScreenPatrolAI;
    TimeDelayHelper@ timeDelayHelper_HorizontalScreenPatrolAI;
    PlayerQueue@ secondaryPlayerQueue_HorizontalScreenPatrolAI;
    Sound@ sound_HorizontalScreenPatrolAI;

    // Java field initializers run after the super constructor
    void jfields_HorizontalScreenPatrolAI()
    {
    this.keyDirection = Canvas::LEFT;
    @this.displayInfoSingleton_HorizontalScreenPatrolAI = DisplayInfoSingleton::getInstance();
    this.firingX_HorizontalScreenPatrolAI = this.displayInfoSingleton_HorizontalScreenPatrolAI.getLastHalfWidth();
    this.firedIndex_HorizontalScreenPatrolAI = 0;
    this.MAX_FIRE_HorizontalScreenPatrolAI = 28;
    @this.timeDelayHelper_HorizontalScreenPatrolAI = TimeDelayHelper().jinit_TimeDelayHelper(240);
    @this.secondaryPlayerQueue_HorizontalScreenPatrolAI = SecondaryPlayerQueueFactory::getInstance();
    
    }
    

    HorizontalScreenPatrolAI@ jinit_HorizontalScreenPatrolAI(ABHashtable@ hashtable, AllBinaryLayer@ ownerLayerInterface, GameInput@ gameInput)
    {
        this.jinit_BasicAI(ownerLayerInterface, gameInput);
        this.jfields_HorizontalScreenPatrolAI();
        @this.sound_HorizontalScreenPatrolAI = cast<Sound>(hashtable.get(HorizontalScreenPatrolAI::SOUND));
        if (this.sound_HorizontalScreenPatrolAI is null) {
            jthrow(Exception().jinit_Exception("No Sound Provided!!"));
        }
        return this;
    }
    

    void processAI(AllBinaryLayerManager@ allBinaryLayerManager)
    {
        BasicAI::processKeyAI(this.keyDirection);
        if (this.timeDelayHelper_HorizontalScreenPatrolAI.isTimeTNT()) {
            AllBinaryLayer@ layerInterface = this.getOwnerLayerInterface();
            int currentOwnerLayerX = layerInterface.getXP();
            if (currentOwnerLayerX < -layerInterface.getWidth()) {
                int y = MyRandomFactory::getInstance().getAbsoluteNextIntAllowZero(50);
                layerInterface.setPosition(this.displayInfoSingleton_HorizontalScreenPatrolAI.getLastWidth() + layerInterface.getWidth() + 50, y, layerInterface.getZP());
                this.firedIndex_HorizontalScreenPatrolAI = 0;
                this.firingX_HorizontalScreenPatrolAI = this.displayInfoSingleton_HorizontalScreenPatrolAI.getLastHalfWidth() + MyRandomFactory::getInstance().getNextInt(this.displayInfoSingleton_HorizontalScreenPatrolAI.getLastHalfWidth());
                this.secondaryPlayerQueue_HorizontalScreenPatrolAI.add(this.sound_HorizontalScreenPatrolAI);
            }
            if (currentOwnerLayerX < this.firingX_HorizontalScreenPatrolAI && currentOwnerLayerX > -layerInterface.getWidth()) {
                BasicAI::processKeyAI(Canvas::KEY_NUM1);
                AllBinaryGameLayerManager@ gameLayerManager = cast<AllBinaryGameLayerManager>(allBinaryLayerManager);
                int FIRE = (gameLayerManager.getGameInfo().getCurrentLevel() + 12) >>> 2;
                if (FIRE > this.MAX_FIRE_HorizontalScreenPatrolAI) {
                    FIRE = this.MAX_FIRE_HorizontalScreenPatrolAI;
                }
                if (this.firedIndex_HorizontalScreenPatrolAI > FIRE) {
                    this.firedIndex_HorizontalScreenPatrolAI = 0;
                    this.firingX_HorizontalScreenPatrolAI = Integer::MIN_VALUE;
                }
                this.firedIndex_HorizontalScreenPatrolAI++;
            }
        }
    }
    

    void nextDirection()
    {
    }
}

namespace HorizontalScreenPatrolAI
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SOUND = SmallIntegerSingletonFactory::getInstance().getAt(433);
    }

    JInteger@ jcell_SOUND;
    JInteger@ get_SOUND() property { jclinit(); return jcell_SOUND; }
    void set_SOUND(JInteger@ value) property { jclinit(); @jcell_SOUND = value; }
}

