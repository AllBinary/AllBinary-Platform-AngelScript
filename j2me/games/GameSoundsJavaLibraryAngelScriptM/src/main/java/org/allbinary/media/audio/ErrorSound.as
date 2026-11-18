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

class ErrorSound : CompositeSound
{
    

    ErrorSound@ jinit_ErrorSound()
    {
        this.jinit_CompositeSound("resource:/wav/error.wav");
        return this;
    }
}

namespace ErrorSound
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_soundInterface = ErrorSound().jinit_ErrorSound();
    }

    Sound@ jcell_soundInterface;
    Sound@ get_soundInterface() property { jclinit(); return jcell_soundInterface; }
    void set_soundInterface(Sound@ value) property { jclinit(); @jcell_soundInterface = value; }
    

    Sound@ getInstance()
    {
        return ErrorSound::soundInterface;
    }
}

