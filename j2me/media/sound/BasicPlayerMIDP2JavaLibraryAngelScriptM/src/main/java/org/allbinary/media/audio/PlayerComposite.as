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
// package org.allbinary.media.audio

//BasicPlayerMIDP2
class PlayerComposite : JObjectBase, Controllable, Player
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    Player@ player;
    TimeDelayHelper@ timeElapsedHelper;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper;

    // Java field initializers run after the super constructor
    void jfields_PlayerComposite()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    @this.timeElapsedHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    PlayerComposite@ jinit_PlayerComposite(Player@ player, int repeatTime)
    {
        this.jfields_PlayerComposite();
        @this.player = player;
        this.timeElapsedHelper.delay = repeatTime;
        return this;
    }
    

    void addPlayerListener(PlayerListener@ playerListener)
    {
        this.player.addPlayerListener(playerListener);
    }
    

    void removePlayerListener(PlayerListener@ playerListener)
    {
        this.player.removePlayerListener(playerListener);
    }
    

    void close()
    {
        this.player.close();
    }
    

    void deallocate()
    {
        this.player.deallocate();
    }
    

    string getContentType()
    {
        return this.player.getContentType();
    }
    

    int64 getDuration()
    {
        return this.player.getDuration();
    }
    

    int64 getMediaTime()
    {
        return this.player.getMediaTime();
    }
    

    TimeBase@ getTimeBase()
    {
        return (cast<TimeBaseInterface>(this.player)).getTimeBase();
    }
    

    void setTimeBase(TimeBase@ timeBase)
    {
        (cast<TimeBaseInterface>(this.player)).setTimeBase(timeBase);
    }
    

    void prefetch()
    {
        try {
            this.player.prefetch();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "prefetch", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void realize()
    {
        try {
            this.player.realize();
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "realize", e);
            }
            else { jthrow(jex1); }
        }
    }
    

    int getState()
    {
        return this.player.getState();
    }
    

    void setLoopCount(int count)
    {
        this.player.setLoopCount(count);
    }
    

    int64 setMediaTime(int64 now)
    {
        try {
            return this.player.setMediaTime(now);
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "setMediaTime", e);
            return int64(-1);
            }
            else { jthrow(jex2); }
        }
        return 0;
    }
    

    void start()
    {
        try {
            if (this.timeElapsedHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
                this.player.start();
            }
        } catch {
            Throwable@ jex3 = jcatch();
            if (cast<Exception>(jex3) !is null) {
                Exception@ e = cast<Exception>(jex3);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.START_METHOD_NAME, e);
            }
            else { jthrow(jex3); }
        }
    }
    

    void stop()
    {
        try {
            this.player.stop();
        } catch {
            Throwable@ jex4 = jcatch();
            if (cast<Exception>(jex4) !is null) {
                Exception@ e = cast<Exception>(jex4);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "stop", e);
            }
            else { jthrow(jex4); }
        }
    }
    

    Control@ getControl(string controlType)
    {
        return this.player.getControl(controlType);
    }
    

    Control@[]@ getControls()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    void setVolume(int leftVolume, int rightVolume)
    {
        Controllable2@ controllable2 = (cast<Controllable2>(this.player));
        controllable2.setVolume(leftVolume, rightVolume);
    }
    

    Player@ getPlayerP()
    {
        return this.player;
    }
}

