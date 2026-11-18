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

class NullRecordStore : RecordStore
{

    NullRecordStore@ jinit_NullRecordStore()
    {
        this.jinit_RecordStore();
        return this;
    }
}

namespace NullRecordStore
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_RECORD_STORE = NullRecordStore().jinit_NullRecordStore();
    }

    NullRecordStore@ jcell_NULL_RECORD_STORE;
    NullRecordStore@ get_NULL_RECORD_STORE() property { jclinit(); return jcell_NULL_RECORD_STORE; }
    void set_NULL_RECORD_STORE(NullRecordStore@ value) property { jclinit(); @jcell_NULL_RECORD_STORE = value; }
}

