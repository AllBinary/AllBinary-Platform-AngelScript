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
// package org.allbinary.game.ag.layer.hud.basic.time

class HudTimer : JObjectBase
{
    int64 startTime_HudTimer;
    int64 hundredthTime_HudTimer;
    int64 maxTime_HudTimer;
    int64 modifier_HudTimer;
    uint16[]@ hundrethsString_HudTimer;
    int totalDigits_HudTimer;
    PrimitiveLongUtil@ primitiveLongUtil_HudTimer;
    uint16[]@ MAX_HudTimer;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_HudTimer;

    // Java field initializers run after the super constructor
    void jfields_HudTimer()
    {
    this.startTime_HudTimer = int64(-1);
    
    
    
    @this.hundrethsString_HudTimer = PrimitiveLongSingleton::getInstance().ZERO;
    this.totalDigits_HudTimer = 1;
    
    @this.MAX_HudTimer = array<uint16> = {uint16('L'), uint16('O'), uint16('L')};
    @this.gameTickTimeDelayHelper_HudTimer = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    HudTimer@ jinit_HudTimer(int maxTime)
    {
        this.jfields_HudTimer();
        @this.primitiveLongUtil_HudTimer = PrimitiveLongUtil::createPowerOfTen(maxTime);
        this.maxTime_HudTimer = int64(maxTime);
        return this;
    }
    

    void start()
    {
        this.hundredthTime_HudTimer = 0;
        this.startTime_HudTimer = this.gameTickTimeDelayHelper_HudTimer.startTime;
    }
    

    int64 get()
    {
        return this.hundredthTime_HudTimer;
    }
    

    void update()
    {
        int64 lastLowerTime = this.hundredthTime_HudTimer;
        int64 currentTime = ((this.modifier_HudTimer + this.gameTickTimeDelayHelper_HudTimer.startTime) - this.startTime_HudTimer);
        if (currentTime < 0) {
            currentTime = 0;
        }
        this.hundredthTime_HudTimer = currentTime / 100;
        if (this.hundredthTime_HudTimer >= this.maxTime_HudTimer) {
            if (this.startTime_HudTimer > 0) {
                @this.hundrethsString_HudTimer = this.MAX_HudTimer;
            }
        } else if (lastLowerTime != this.hundredthTime_HudTimer) {
            @this.hundrethsString_HudTimer = this.primitiveLongUtil_HudTimer.getCharArray(int(this.hundredthTime_HudTimer));
            this.totalDigits_HudTimer = this.primitiveLongUtil_HudTimer.getCurrentTotalDigits();
        }
    }
    

    void reduce(int value)
    {
        this.modifier_HudTimer -= int64(value);
    }
    

    void add(int value)
    {
        this.modifier_HudTimer += int64(value);
    }
    

    uint16[]@ getTimeChars()
    {
        return this.hundrethsString_HudTimer;
    }
    

    int getCurrentTotalDigits()
    {
        return this.totalDigits_HudTimer;
    }
}

