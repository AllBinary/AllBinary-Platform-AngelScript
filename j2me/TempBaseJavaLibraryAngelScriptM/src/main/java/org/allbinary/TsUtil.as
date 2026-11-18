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

//TempBase
class TsUtil : JObjectBase
{

    TsUtil@ jinit_TsUtil()
    {
        return this;
    }
    

    double longBitsToDouble(int64 bits)
    {
        return Double::longBitsToDouble(bits);
    }
    

    float intBitsToFloat(int bits)
    {
        return Float::intBitsToFloat(bits);
    }
    

    int hashCode(JObject@ anyType)
    {
        return anyType.hashCode();
    }
    

    void waitFor(JObject@ any, int64 timeoutMillis)
    {
        JObject@ anyType = any;
        anyType.wait(timeoutMillis);
    }
    

    int compareTo(string a, string b)
    {
        return String::compareTo(a, b);
    }
}

namespace TsUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TsUtil().jinit_TsUtil();
    }

    TsUtil@ jcell_instance;
    TsUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TsUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    TsUtil@ getInstance()
    {
        return TsUtil::instance;
    }
}

