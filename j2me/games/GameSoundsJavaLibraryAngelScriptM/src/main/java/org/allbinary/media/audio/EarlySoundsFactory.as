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

class EarlySoundsFactory : BaseSoundsFactory
{

    EarlySoundsFactory@ jinit_EarlySoundsFactory()
    {
        this.jinit_BaseSoundsFactory();
        return this;
    }
    

    Sound@[]@ getSoundInterfaceArray()
    {
        Sound@[]@ soundInterfaceArray = array<Sound@>(2);
        int index = 0;
        @soundInterfaceArray[index++] = SelectSound::getInstance();
        @soundInterfaceArray[index++] = ErrorSound::getInstance();
        return soundInterfaceArray;
    }
}

namespace EarlySoundsFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = EarlySoundsFactory().jinit_EarlySoundsFactory();
    }

    EarlySoundsFactory@ jcell_instance;
    EarlySoundsFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(EarlySoundsFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    EarlySoundsFactory@ getInstance()
    {
        return EarlySoundsFactory::instance;
    }
}

