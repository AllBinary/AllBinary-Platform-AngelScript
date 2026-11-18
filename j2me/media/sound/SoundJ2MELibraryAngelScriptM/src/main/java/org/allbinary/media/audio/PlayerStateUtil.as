/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class PlayerStateUtil : JObjectBase
{
    CommonStrings@ commonStrings;
    string UNREALIZED;
    string REALIZED;
    string PREFETCHED;
    string STARTED;
    string CLOSED;

    // Java field initializers run after the super constructor
    void jfields_PlayerStateUtil()
    {
    @this.commonStrings = CommonStrings::getInstance();
    this.UNREALIZED = "UNREALIZED";
    this.REALIZED = "REALIZED";
    this.PREFETCHED = "PREFETCHED";
    this.STARTED = "STARTED";
    this.CLOSED = "CLOSED";
    }

    PlayerStateUtil@ jinit_PlayerStateUtil()
    {
        this.jfields_PlayerStateUtil();
        return this;
    }
    

    string convert(int state)
    {
        if (state == Player::UNREALIZED) {
            return this.UNREALIZED;
        } else if (state == Player::REALIZED) {
            return this.REALIZED;
        } else if (state == Player::PREFETCHED) {
            return this.PREFETCHED;
        } else if (state == Player::STARTED) {
            return this.STARTED;
        } else if (state == Player::CLOSED) {
            return this.CLOSED;
        }
        return this.commonStrings.UNKNOWN;
    }
}

namespace PlayerStateUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PlayerStateUtil().jinit_PlayerStateUtil();
    }

    PlayerStateUtil@ jcell_instance;
    PlayerStateUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PlayerStateUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    PlayerStateUtil@ getInstance()
    {
        return PlayerStateUtil::instance;
    }
}

