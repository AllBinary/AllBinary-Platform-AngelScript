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
// package org.allbinary.logic.io

class NullCloseable : JObjectBase, Closeable
{

    NullCloseable@ jinit_NullCloseable()
    {
        return this;
    }
    

    void close()
    {
    }
}

namespace NullCloseable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_CLOSEABLE = NullCloseable().jinit_NullCloseable();
    }

    NullCloseable@ jcell_NULL_CLOSEABLE;
    NullCloseable@ get_NULL_CLOSEABLE() property { jclinit(); return jcell_NULL_CLOSEABLE; }
    void set_NULL_CLOSEABLE(NullCloseable@ value) property { jclinit(); @jcell_NULL_CLOSEABLE = value; }
}

