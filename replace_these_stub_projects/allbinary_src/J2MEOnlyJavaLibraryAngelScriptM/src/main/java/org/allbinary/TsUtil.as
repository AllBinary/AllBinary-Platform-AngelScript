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

//J2ME
class TsUtil : JObjectBase
{

    TsUtil@ jinit_TsUtil()
    {
        return this;
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
    

    int8[]@ getRecord(JObject@ anyType, int recordId)
    {
        RecordStore@ recordStore = cast<RecordStore>(anyType);
        int8[]@ data;
        {
            @data = array<int8>(recordStore.getRecordSize(recordId));
            recordStore.getRecord(recordId, data, 0);
        }
        return (int(data.length()) < 1 ? NullUtil::getInstance().NULL_BYTE_ARRAY : data);
    }
    

    int compareTo(string a, string b)
    {
        return String::compareTo(a, b);
    }
    

    bool equalIgnoreCase(string a, string b)
    {
        return String::equalsIgnoreCase(a, b);
    }
    

    bool equalsNotstring(JObject@ anyType, JObject@ object2)
    {
        return anyType.equals(object2);
    }
    

    int toNumberFromChar(uint16 value)
    {
        return int(value);
    }
    

    int toNumber(int value)
    {
        return value;
    }
    

    int8[]@ getByteArray(string string_)
    {
        return String::getBytes(string_);
    }
    

    bool isItemListener(Displayable@ owner)
    {
        if ((cast<Form>(owner) !is null)) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void printAvailableMethods(JObject@ anyType)
    {
    }
    

    void gc()
    {
        System::gc();
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

