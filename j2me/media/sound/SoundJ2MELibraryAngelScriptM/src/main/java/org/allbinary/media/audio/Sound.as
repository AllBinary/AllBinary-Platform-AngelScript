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

class Sound : JObjectBase, SoundInterface, Runnable
{
    string resource;
    Player@ player;

    // Java field initializers run after the super constructor
    void jfields_Sound()
    {
    
    @this.player = NoPlayer::NO_PLAYER;
    }
    

    Sound@ jinit_Sound(string resource)
    {
        this.jfields_Sound();
        this.resource = resource;
        return this;
    }
    

    string getResource()
    {
        return this.resource;
    }
    

    Player@ getPlayerP()
    {
        return this.player;
    }
    

    void setPlayerP(Player@ player)
    {
        @this.player = player;
    }
    

    void init()
    {
    }
    

    int getDuration()
    {
        return -1;
    }
    

    void run()
    {
        try {
            this.player.start();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::put(commonStrings.EXCEPTION, this, commonStrings.RUN);
            }
            else { jthrow(jex0); }
        }
    }
}

