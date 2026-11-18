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
// package org.allbinary

//J2SEForJ2ME
class J2SEUtil : JObjectBase
{

    J2SEUtil@ jinit_J2SEUtil()
    {
        return this;
    }
    

    JObject@[]@ getHashMapAsArray(HashMap@ hashMap)
    {
        JObject@[]@ objectArray = hashMap.keySet().toArray();
        return objectArray;
    }
    

    JObject@[]@ getMapAsArray(Map@ map)
    {
        JObject@[]@ objectArray = map.keySet().toArray();
        return objectArray;
    }
    

    JObject@[]@ getSetAsArray(Set@ set)
    {
        JObject@[]@ objectArray = set.toArray();
        return objectArray;
    }
}

namespace J2SEUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = J2SEUtil().jinit_J2SEUtil();
    }

    J2SEUtil@ jcell_instance;
    J2SEUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(J2SEUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    J2SEUtil@ getInstance()
    {
        return J2SEUtil::instance;
    }
}

