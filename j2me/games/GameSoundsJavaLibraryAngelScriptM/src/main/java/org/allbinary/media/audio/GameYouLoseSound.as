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

//Use 8hz16bitmono for most J2ME
class GameYouLoseSound : CompositeSound
{
    

    GameYouLoseSound@ jinit_GameYouLoseSound()
    {
        this.jinit_CompositeSound("resource:/wav/youlose.wav");
        return this;
    }
}

namespace GameYouLoseSound
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_soundInterface = GameYouLoseSound().jinit_GameYouLoseSound();
    }

    Sound@ jcell_soundInterface;
    Sound@ get_soundInterface() property { jclinit(); return jcell_soundInterface; }
    void set_soundInterface(Sound@ value) property { jclinit(); @jcell_soundInterface = value; }
    

    Sound@ getInstance()
    {
        return GameYouLoseSound::soundInterface;
    }
}

