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

//BasicPlayer
class PlayerComposite : JObjectBase, Controllable, Player
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_PlayerComposite;
    Player@ player_PlayerComposite;
    TimeDelayHelper@ timeElapsedHelper_PlayerComposite;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_PlayerComposite;

    // Java field initializers run after the super constructor
    void jfields_PlayerComposite()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_PlayerComposite = CommonStrings::getInstance();
    
    @this.timeElapsedHelper_PlayerComposite = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.gameTickTimeDelayHelper_PlayerComposite = GameTickTimeDelayHelperFactory::getInstance();
    }
    

    PlayerComposite@ jinit_PlayerComposite(Player@ player, int repeatTime)
    {
        this.jfields_PlayerComposite();
        @this.player_PlayerComposite = player;
        this.timeElapsedHelper_PlayerComposite.delay = repeatTime;
        return this;
    }
    

    void addPlayerListener(PlayerListener@ playerListener)
    {
        this.player_PlayerComposite.addPlayerListener(playerListener);
    }
    

    void removePlayerListener(PlayerListener@ playerListener)
    {
        this.player_PlayerComposite.removePlayerListener(playerListener);
    }
    

    void close()
    {
        this.player_PlayerComposite.close();
    }
    

    void deallocate()
    {
        this.player_PlayerComposite.deallocate();
    }
    

    string getContentType()
    {
        return this.player_PlayerComposite.getContentType();
    }
    

    int64 getDuration()
    {
        return this.player_PlayerComposite.getDuration();
    }
    

    int64 getMediaTime()
    {
        return this.player_PlayerComposite.getMediaTime();
    }
    

    void prefetch()
    {
        try {
            this.player_PlayerComposite.prefetch();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings_PlayerComposite.EXCEPTION, this, "prefetch", e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void realize()
    {
        try {
            this.player_PlayerComposite.realize();
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            this.logUtil.put(this.commonStrings_PlayerComposite.EXCEPTION, this, "realize", e);
            }
            else { jthrow(jex1); }
        }
    }
    

    int getState()
    {
        return this.player_PlayerComposite.getState();
    }
    

    void setLoopCount(int count)
    {
        this.player_PlayerComposite.setLoopCount(count);
    }
    

    int64 setMediaTime(int64 now)
    {
        try {
            return this.player_PlayerComposite.setMediaTime(now);
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            this.logUtil.put(this.commonStrings_PlayerComposite.EXCEPTION, this, "setMediaTime", e);
            return int64(-1);
            }
            else { jthrow(jex2); }
        }
        return 0;
    }
    

    void start()
    {
        try {
            if (this.timeElapsedHelper_PlayerComposite.isTime(this.gameTickTimeDelayHelper_PlayerComposite.startTime)) {
                this.player_PlayerComposite.start();
            }
        } catch {
            Throwable@ jex3 = jcatch();
            if (cast<Exception>(jex3) !is null) {
                Exception@ e = cast<Exception>(jex3);
            this.logUtil.put(this.commonStrings_PlayerComposite.EXCEPTION, this, this.commonStrings_PlayerComposite.START_METHOD_NAME, e);
            }
            else { jthrow(jex3); }
        }
    }
    

    void stop()
    {
        try {
            this.player_PlayerComposite.stop();
        } catch {
            Throwable@ jex4 = jcatch();
            if (cast<Exception>(jex4) !is null) {
                Exception@ e = cast<Exception>(jex4);
            this.logUtil.put(this.commonStrings_PlayerComposite.EXCEPTION, this, "stop", e);
            }
            else { jthrow(jex4); }
        }
    }
    

    Control@ getControl(string controlType)
    {
        return this.player_PlayerComposite.getControl(controlType);
    }
    

    Control@[]@ getControls()
    {
        jthrow(RuntimeException().jinit_RuntimeException());
        return null;
    }
    

    void setVolume(int leftVolume, int rightVolume)
    {
        Controllable2@ controllable2 = (cast<Controllable2>(this.player_PlayerComposite));
        controllable2.setVolume(leftVolume, rightVolume);
    }
    

    Player@ getPlayerP()
    {
        return this.player_PlayerComposite;
    }
}

