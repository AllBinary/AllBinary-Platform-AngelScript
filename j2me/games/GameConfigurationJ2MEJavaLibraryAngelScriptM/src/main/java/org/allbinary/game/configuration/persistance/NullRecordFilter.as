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
// package org.allbinary.game.configuration.persistance

class NullRecordFilter : JObjectBase, RecordFilter
{

    NullRecordFilter@ jinit_NullRecordFilter()
    {
        return this;
    }
    

    bool matches(int8[]@ candidate)
    {
        return true;
    }
}

namespace NullRecordFilter
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_RECORD_FILTER = NullRecordFilter().jinit_NullRecordFilter();
    }

    NullRecordFilter@ jcell_NULL_RECORD_FILTER;
    NullRecordFilter@ get_NULL_RECORD_FILTER() property { jclinit(); return jcell_NULL_RECORD_FILTER; }
    void set_NULL_RECORD_FILTER(NullRecordFilter@ value) property { jclinit(); @jcell_NULL_RECORD_FILTER = value; }
}

