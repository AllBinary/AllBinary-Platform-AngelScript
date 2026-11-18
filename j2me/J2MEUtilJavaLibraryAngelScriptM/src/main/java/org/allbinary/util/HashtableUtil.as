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
// package org.allbinary.util

class HashtableUtil : JObjectBase
{
    EnumerationUtil@ enumerationUtil;

    // Java field initializers run after the super constructor
    void jfields_HashtableUtil()
    {
    @this.enumerationUtil = EnumerationUtil::getInstance();
    }

    HashtableUtil@ jinit_HashtableUtil()
    {
        this.jfields_HashtableUtil();
        return this;
    }
    

    void putAll(ABHashtable@ fromHashtable, ABHashtable@ hashtable)
    {
        Enumeration@ enumeration = fromHashtable.keys();
        JObject@ keyCanBeNull;
        JObject@ valueCanBeNull;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            @keyCanBeNull = this.enumerationUtil.nextElement(enumeration);
            @valueCanBeNull = hashtable.get(keyCanBeNull);
            if (valueCanBeNull is null) {
            } else {
                hashtable.put(keyCanBeNull, valueCanBeNull);
            }
        }
    }
    

    JObject@[]@ getKeysAsArray(ABHashtable@ hashtable)
    {
        JObject@[]@ objectArray = array<JObject@>(hashtable.size());
        int index = 0;
        Enumeration@ enumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            @objectArray[index++] = this.enumerationUtil.nextElement(enumeration);
        }
        return objectArray;
    }
    

    BasicArrayList@ getKeysAsList(ABHashtable@ hashtable)
    {
        BasicArrayList@ list = BasicArrayListS().jinit_BasicArrayListS(hashtable.size());
        Enumeration@ enumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            list.add(this.enumerationUtil.nextElement(enumeration));
        }
        return list;
    }
}

namespace HashtableUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = HashtableUtil().jinit_HashtableUtil();
    }

    HashtableUtil@ jcell_instance;
    HashtableUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(HashtableUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    HashtableUtil@ getInstance()
    {
        return HashtableUtil::instance;
    }
}

