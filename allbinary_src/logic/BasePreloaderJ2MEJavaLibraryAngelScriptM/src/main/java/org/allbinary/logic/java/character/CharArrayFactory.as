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
// package org.allbinary.logic.java.character

class CharArrayFactory : JObjectBase
{
    uint16[]@ zeroCharArray_CharArrayFactory;

    // Java field initializers run after the super constructor
    void jfields_CharArrayFactory()
    {
    @this.zeroCharArray_CharArrayFactory = array<uint16>(0);
    }

    CharArrayFactory@ jinit_CharArrayFactory()
    {
        this.jfields_CharArrayFactory();
        return this;
    }
    

    uint16[]@ getZeroCharArray()
    {
        return this.zeroCharArray_CharArrayFactory;
    }
}

namespace CharArrayFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CharArrayFactory().jinit_CharArrayFactory();
    }

    CharArrayFactory@ jcell_instance;
    CharArrayFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CharArrayFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    CharArrayFactory@ getInstance()
    {
        return CharArrayFactory::instance;
    }
}

