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

class NoSound : Sound
{
    

    NoSound@ jinit_NoSound()
    {
        this.jinit_Sound(StringUtil::getInstance().EMPTY_STRING);
        this.setPlayerP(NoPlayer::NO_PLAYER);
        return this;
    }
}

namespace NoSound
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoSound().jinit_NoSound();
    }

    NoSound@ jcell_instance;
    NoSound@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NoSound@ value) property { jclinit(); @jcell_instance = value; }
    

    NoSound@ getInstance()
    {
        return NoSound::instance;
    }
}

