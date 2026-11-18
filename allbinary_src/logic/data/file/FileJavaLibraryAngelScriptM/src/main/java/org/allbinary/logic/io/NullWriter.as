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

class NullWriter : Writer
{

    NullWriter@ jinit_NullWriter()
    {
        this.jinit_Writer();
        return this;
    }
    

    void write(int c)
    {
    }
    

    void write(uint16[]@ cbuf, int off, int len)
    {
    }
    

    void write(string str)
    {
    }
    

    void write(string str, int off, int len)
    {
    }
    

    void flush()
    {
    }
    

    void close()
    {
    }
}

namespace NullWriter
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_WRITER = NullWriter().jinit_NullWriter();
    }

    NullWriter@ jcell_NULL_WRITER;
    NullWriter@ get_NULL_WRITER() property { jclinit(); return jcell_NULL_WRITER; }
    void set_NULL_WRITER(NullWriter@ value) property { jclinit(); @jcell_NULL_WRITER = value; }
}

