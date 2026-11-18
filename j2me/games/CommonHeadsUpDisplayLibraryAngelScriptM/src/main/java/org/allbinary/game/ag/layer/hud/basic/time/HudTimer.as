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
    int64 startTime;
    int64 hundredthTime;
    int64 maxTime;
    int64 modifier;
    uint16[]@ hundrethsString;
    int totalDigits;
    PrimitiveLongUtil@ primitiveLongUtil;
    uint16[]@ MAX;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper;

    // Java field initializers run after the super constructor
    void jfields_HudTimer()
    {
    this.startTime = int64(-1);
    
    
    
    @this.hundrethsString = PrimitiveLongSingleton::getInstance().ZERO;
    this.totalDigits = 1;
    
    @this.MAX = array<uint16> = {uint16('L'), uint16('O'), uint16('L')};
    @this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    HudTimer@ jinit_HudTimer(int maxTime)
    {
        this.jfields_HudTimer();
        @this.primitiveLongUtil = PrimitiveLongUtil::createPowerOfTen(maxTime);
        this.maxTime = int64(maxTime);
        return this;
    }
    

    void start()
    {
        this.hundredthTime = 0;
        this.startTime = this.gameTickTimeDelayHelper.startTime;
    }
    

    int64 get()
    {
        return this.hundredthTime;
    }
    

    void update()
    {
        int64 lastLowerTime = this.hundredthTime;
        int64 currentTime = ((this.modifier + this.gameTickTimeDelayHelper.startTime) - this.startTime);
        if (currentTime < 0) {
            currentTime = 0;
        }
        this.hundredthTime = currentTime / 100;
        if (this.hundredthTime >= this.maxTime) {
            if (this.startTime > 0) {
                @this.hundrethsString = this.MAX;
            }
        } else if (lastLowerTime != this.hundredthTime) {
            @this.hundrethsString = this.primitiveLongUtil.getCharArray(int(this.hundredthTime));
            this.totalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
        }
    }
    

    void reduce(int value)
    {
        this.modifier -= int64(value);
    }
    

    void add(int value)
    {
        this.modifier += int64(value);
    }
    

    uint16[]@ getTimeChars()
    {
        return this.hundrethsString;
    }
    

    int getCurrentTotalDigits()
    {
        return this.totalDigits;
    }
}

