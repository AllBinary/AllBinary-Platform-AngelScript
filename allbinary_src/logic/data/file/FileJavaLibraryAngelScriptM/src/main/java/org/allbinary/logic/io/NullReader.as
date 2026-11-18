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

class NullReader : Reader
{

    NullReader@ jinit_NullReader()
    {
        this.jinit_Reader();
        return this;
    }
    

    int read()
    {
        return -1;
    }
    

    int read(uint16[]@ cbuf, int off, int len)
    {
        return -1;
    }
    

    bool ready()
    {
        return false;
    }
    

    int64 skip(int64 n)
    {
        return int64(0);
    }
    

    void close()
    {
    }
}

namespace NullReader
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_READER = NullReader().jinit_NullReader();
    }

    NullReader@ jcell_NULL_READER;
    NullReader@ get_NULL_READER() property { jclinit(); return jcell_NULL_READER; }
    void set_NULL_READER(NullReader@ value) property { jclinit(); @jcell_NULL_READER = value; }
}

