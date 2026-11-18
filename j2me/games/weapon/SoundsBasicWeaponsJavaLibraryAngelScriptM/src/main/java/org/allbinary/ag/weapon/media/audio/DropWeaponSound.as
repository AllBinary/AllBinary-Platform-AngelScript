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
// package org.allbinary.ag.weapon.media.audio

class DropWeaponSound : CompositeSound
{
    

    DropWeaponSound@ jinit_DropWeaponSound()
    {
        this.jinit_CompositeSound("resource:/wav/mine.wav");
        return this;
    }
}

namespace DropWeaponSound
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_soundInterface = DropWeaponSound().jinit_DropWeaponSound();
    }

    Sound@ jcell_soundInterface;
    Sound@ get_soundInterface() property { jclinit(); return jcell_soundInterface; }
    void set_soundInterface(Sound@ value) property { jclinit(); @jcell_soundInterface = value; }
    

    Sound@ getInstance()
    {
        return DropWeaponSound::soundInterface;
    }
}

