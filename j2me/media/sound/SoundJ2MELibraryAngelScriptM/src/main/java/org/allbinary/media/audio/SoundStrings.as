/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class SoundStrings : JObjectBase
{
    string STOP_ALL;
    string CLOSE_ALL;
    string SOUND;
    string INIT_SOUND;
    string STOPPING_SOUND;
    string CLOSING_SOUND;

    // Java field initializers run after the super constructor
    void jfields_SoundStrings()
    {
    this.STOP_ALL = "stopAll";
    this.CLOSE_ALL = "closeAll";
    this.SOUND = " Sound: ";
    this.INIT_SOUND = "Initializing Sound: ";
    this.STOPPING_SOUND = "Stopping Sound: ";
    this.CLOSING_SOUND = "Closing Sound: ";
    }

    SoundStrings@ jinit_SoundStrings()
    {
        this.jfields_SoundStrings();
        return this;
    }
}

namespace SoundStrings
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SoundStrings().jinit_SoundStrings();
    }

    SoundStrings@ jcell_instance;
    SoundStrings@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SoundStrings@ value) property { jclinit(); @jcell_instance = value; }
    

    SoundStrings@ getInstance()
    {
        return SoundStrings::instance;
    }
}

