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
// package org.allbinary.logic.io.path

class AbPathData : JObjectBase
{
    string EXTENSION_SEP;
    uint16 SEPARATORCHAR;
    string SEPARATOR;

    // Java field initializers run after the super constructor
    void jfields_AbPathData()
    {
    this.EXTENSION_SEP = CommonSeps::getInstance().PERIOD;
    this.SEPARATORCHAR = uint16('/');
    this.SEPARATOR = CommonSeps::getInstance().FORWARD_SLASH;
    }
    

    AbPathData@ jinit_AbPathData()
    {
        this.jfields_AbPathData();
        return this;
    }
}

namespace AbPathData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AbPathData().jinit_AbPathData();
    }

    AbPathData@ jcell_instance;
    AbPathData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AbPathData@ value) property { jclinit(); @jcell_instance = value; }
    

    AbPathData@ getInstance()
    {
        return AbPathData::instance;
    }
}

