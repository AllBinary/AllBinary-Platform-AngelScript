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
// package org.allbinary.device

class NullGL10 : JObjectBase, GL10
{

    NullGL10@ jinit_NullGL10()
    {
        return this;
    }
}

namespace NullGL10
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_GL10 = NullGL10().jinit_NullGL10();
    }

    NullGL10@ jcell_NULL_GL10;
    NullGL10@ get_NULL_GL10() property { jclinit(); return jcell_NULL_GL10; }
    void set_NULL_GL10(NullGL10@ value) property { jclinit(); @jcell_NULL_GL10 = value; }
}

