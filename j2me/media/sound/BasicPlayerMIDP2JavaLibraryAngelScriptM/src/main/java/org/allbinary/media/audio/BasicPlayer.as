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

//BasicPlayerMIDP2JavaLibrary
class BasicPlayer : JObjectBase, Player, TimeBaseInterface, Controllable2
{
    BasicArrayList@ listenersList;
    TimeBase@ timeBase_BasicPlayer;
    int stateP;
    int loopCountP;

    // Java field initializers run after the super constructor
    void jfields_BasicPlayer()
    {
    @this.listenersList = BasicArrayListD().jinit_BasicArrayListD();
    
    
    
    }
    

    BasicPlayer@ jinit_BasicPlayer()
    {
        this.jfields_BasicPlayer();
        this.setLoopCount(0);
        this.setState(Player::UNREALIZED);
        return this;
    }
    

    string getContentType()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    Control@ getControl(string controlType)
    {
        return NullControl().jinit_NullControl();
    }
    

    Control@[]@ getControls()
    {
        return array<Control@>(0);
    }
    

    void close()
    {
    }
    

    void addPlayerListener(PlayerListener@ playerListener)
    {
        if (!this.listenersList.contains(playerListener)) {
            this.listenersList.add(playerListener);
        }
    }
    

    void removePlayerListener(PlayerListener@ playerListener)
    {
        this.listenersList.remove(playerListener);
    }
    

    int getState()
    {
        return this.stateP;
    }
    

    void setState(int state)
    {
        this.stateP = state;
    }
    

    int64 getDuration()
    {
        return 0;
    }
    

    int64 getMediaTime()
    {
        return 0;
    }
    

    TimeBase@ getTimeBase()
    {
        return this.timeBase_BasicPlayer;
    }
    

    void setTimeBase(TimeBase@ timeBase)
    {
        @this.timeBase_BasicPlayer = timeBase;
    }
    

    void deallocate()
    {
    }
    

    void prefetch()
    {
    }
    

    void realize()
    {
    }
    

    void setLoopCount(int count)
    {
        this.loopCountP = count;
    }
    

    int getLoopCount()
    {
        return this.loopCountP;
    }
    

    int64 setMediaTime(int64 now)
    {
        return 0;
    }
    

    void start()
    {
        this.setState(Player::STARTED);
    }
    

    void stop()
    {
        this.setState(Player::PREFETCHED);
    }
    

    void setVolume(int leftVolume, int rightVolume)
    {
    }
}

namespace BasicPlayer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_CONTROL_TYPE = "ToneControl";
    }

    string jcell_CONTROL_TYPE;
    string get_CONTROL_TYPE() property { jclinit(); return jcell_CONTROL_TYPE; }
    void set_CONTROL_TYPE(string value) property { jclinit(); jcell_CONTROL_TYPE = value; }
}

