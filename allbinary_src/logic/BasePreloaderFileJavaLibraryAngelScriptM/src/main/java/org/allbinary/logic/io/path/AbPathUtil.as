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
// package org.allbinary.logic.io.path

class AbPathUtil : JObjectBase
{
    AbPath@ NO_ABPATH;

    // Java field initializers run after the super constructor
    void jfields_AbPathUtil()
    {
    @this.NO_ABPATH = AbPath::createAbPath();
    }

    AbPathUtil@ jinit_AbPathUtil()
    {
        this.jfields_AbPathUtil();
        return this;
    }
}

namespace AbPathUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AbPathUtil().jinit_AbPathUtil();
    }

    AbPathUtil@ jcell_instance;
    AbPathUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AbPathUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    AbPathUtil@ getInstance()
    {
        return AbPathUtil::instance;
    }
}

