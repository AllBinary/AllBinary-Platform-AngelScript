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
// package org.allbinary.logic.java.characters

class CharacterSetData : JObjectBase
{
    string US_ASCII;
    string ISO_8859_1;
    string UTF_8;
    string UTF_16;
    string UTF_16BE;
    string UTF_16LE;

    // Java field initializers run after the super constructor
    void jfields_CharacterSetData()
    {
    this.US_ASCII = "US-ASCII";
    this.ISO_8859_1 = "ISO-8859-1";
    this.UTF_8 = "UTF-8";
    this.UTF_16 = "UTF-16";
    this.UTF_16BE = "UTF-16BE";
    this.UTF_16LE = "UTF-16LE";
    }
    

    CharacterSetData@ jinit_CharacterSetData()
    {
        this.jfields_CharacterSetData();
        return this;
    }
}

namespace CharacterSetData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CharacterSetData().jinit_CharacterSetData();
    }

    CharacterSetData@ jcell_instance;
    CharacterSetData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CharacterSetData@ value) property { jclinit(); @jcell_instance = value; }
    

    CharacterSetData@ getInstance()
    {
        return CharacterSetData::instance;
    }
}

