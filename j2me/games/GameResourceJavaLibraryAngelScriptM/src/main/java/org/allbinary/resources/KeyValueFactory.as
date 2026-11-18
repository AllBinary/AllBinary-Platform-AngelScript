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
// package org.allbinary.resources

class KeyValueFactory : JObjectBase
{
    ABHashtable@ MAP;

    // Java field initializers run after the super constructor
    void jfields_KeyValueFactory()
    {
    @this.MAP = StdUtil::getInstance().createHashtable();
    }

    KeyValueFactory@ jinit_KeyValueFactory()
    {
        this.jfields_KeyValueFactory();
        return this;
    }
    

    string get(string key)
    {
        if (!this.MAP.containsKey(key)) {
            return key;
        }
        return jstringOf(this.MAP.get(key));
    }
}

namespace KeyValueFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = KeyValueFactory().jinit_KeyValueFactory();
    }

    KeyValueFactory@ jcell_instance;
    KeyValueFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(KeyValueFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    KeyValueFactory@ getInstance()
    {
        return KeyValueFactory::instance;
    }
}

