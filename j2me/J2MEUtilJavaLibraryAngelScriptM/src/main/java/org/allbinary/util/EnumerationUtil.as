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
// package org.allbinary.util

//ArkTs does not have this.  So this is for the ArkTs build.
class EnumerationUtil : JObjectBase
{

    EnumerationUtil@ jinit_EnumerationUtil()
    {
        return this;
    }
    

    bool hasMoreElements(Enumeration@ enumeration)
    {
        return enumeration.hasMoreElements();
    }
    

    JObject@ nextElement(Enumeration@ enumeration)
    {
        return enumeration.nextElement();
    }
    

    JObject@[]@ getAsArray(Enumeration@ enumeration)
    {
        BasicArrayList@ basicArrayList = BasicArrayListD().jinit_BasicArrayListD();
        while (this.hasMoreElements(enumeration)) {
            basicArrayList.add(this.nextElement(enumeration));
        }
        return basicArrayList.toArray();
    }
}

namespace EnumerationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = EnumerationUtil().jinit_EnumerationUtil();
    }

    EnumerationUtil@ jcell_instance;
    EnumerationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(EnumerationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    EnumerationUtil@ getInstance()
    {
        return EnumerationUtil::instance;
    }
}

