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

class NullRecordComparator : JObjectBase, RecordComparator
{

    NullRecordComparator@ jinit_NullRecordComparator()
    {
        return this;
    }
    

    int compare(int8[]@ rec1, int8[]@ rec2)
    {
        return 0;
    }
}

namespace NullRecordComparator
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_RECORD_COMPARATOR = NullRecordComparator().jinit_NullRecordComparator();
    }

    NullRecordComparator@ jcell_NULL_RECORD_COMPARATOR;
    NullRecordComparator@ get_NULL_RECORD_COMPARATOR() property { jclinit(); return jcell_NULL_RECORD_COMPARATOR; }
    void set_NULL_RECORD_COMPARATOR(NullRecordComparator@ value) property { jclinit(); @jcell_NULL_RECORD_COMPARATOR = value; }
}

