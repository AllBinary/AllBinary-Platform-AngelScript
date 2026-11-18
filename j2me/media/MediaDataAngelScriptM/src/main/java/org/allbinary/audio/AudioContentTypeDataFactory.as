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
// package org.allbinary.audio

class AudioContentTypeDataFactory : JObjectBase
{
    AudioContentTypeData@ MIME_AUDIO_TONE;
    AudioContentTypeData@ MIME_AUDIO_AMR;
    AudioContentTypeData@ MIME_AUDIO_AMR_WB;
    AudioContentTypeData@ MIME_AUDIO_WAV;
    AudioContentTypeData@ MIME_AUDIO_MIDI;
    AudioContentTypeData@ MIME_AUDIO_SP_MIDI;

    // Java field initializers run after the super constructor
    void jfields_AudioContentTypeDataFactory()
    {
    @this.MIME_AUDIO_TONE = AudioContentTypeData().jinit_AudioContentTypeData("audio/x-tone-seq");
    @this.MIME_AUDIO_AMR = AudioContentTypeData().jinit_AudioContentTypeData("audio/amr");
    @this.MIME_AUDIO_AMR_WB = AudioContentTypeData().jinit_AudioContentTypeData("audio/amr-wb");
    @this.MIME_AUDIO_WAV = AudioContentTypeData().jinit_AudioContentTypeData("audio/x-wav");
    @this.MIME_AUDIO_MIDI = AudioContentTypeData().jinit_AudioContentTypeData("audio/midi");
    @this.MIME_AUDIO_SP_MIDI = AudioContentTypeData().jinit_AudioContentTypeData("audio/sp-midi");
    }
    

    AudioContentTypeDataFactory@ jinit_AudioContentTypeDataFactory()
    {
        this.jfields_AudioContentTypeDataFactory();
        return this;
    }
}

namespace AudioContentTypeDataFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AudioContentTypeDataFactory().jinit_AudioContentTypeDataFactory();
    }

    AudioContentTypeDataFactory@ jcell_instance;
    AudioContentTypeDataFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AudioContentTypeDataFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    AudioContentTypeDataFactory@ getInstance()
    {
        return AudioContentTypeDataFactory::instance;
    }
}

