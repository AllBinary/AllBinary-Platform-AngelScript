/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.layer

class SWTUtil : JObjectBase
{

    SWTUtil@ jinit_SWTUtil()
    {
        return this;
    }
}

namespace SWTUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_isSWT = false;
        jcell_SWT = "SWT";
    }

    bool jcell_isSWT;
    bool get_isSWT() property { jclinit(); return jcell_isSWT; }
    void set_isSWT(bool value) property { jclinit(); jcell_isSWT = value; }

    string jcell_SWT;
    string get_SWT() property { jclinit(); return jcell_SWT; }
    void set_SWT(string value) property { jclinit(); jcell_SWT = value; }
}

