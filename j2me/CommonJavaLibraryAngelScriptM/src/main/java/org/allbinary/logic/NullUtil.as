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
// package org.allbinary.logic

//ActualPlatform
class NullUtil : JObjectBase
{
    JObject@ NULL_OBJECT;
    string NULL_CLASS;
    JObject@[]@ NULL_OBJECT_ARRAY;
    uint16[]@ NULL_CHAR_ARRAY;
    int8[]@ NULL_BYTE_ARRAY;
    int16[]@[]@ NULL_SHORT_ARRAY_ARRAY;
    int[]@ NULL_INT_ARRAY;
    int[]@[]@ NULL_INT_ARRAY_ARRAY;
    int[]@[]@[]@ NULL_INT_ARRAY_ARRAY_ARRAY;
    float[]@ NULL_FLOAT_ARRAY;

    // Java field initializers run after the super constructor
    void jfields_NullUtil()
    {
    @this.NULL_OBJECT = JObjectBase();
    this.NULL_CLASS = jClassName(this.NULL_OBJECT);
    @this.NULL_OBJECT_ARRAY = array<JObject@>(0);
    @this.NULL_CHAR_ARRAY = array<uint16>(0);
    @this.NULL_BYTE_ARRAY = array<int8>(0);
    @this.NULL_SHORT_ARRAY_ARRAY = jnewArray2_Short(0, 0);
    @this.NULL_INT_ARRAY = array<int>(0);
    @this.NULL_INT_ARRAY_ARRAY = jnewArray2_Int(0, 0);
    @this.NULL_INT_ARRAY_ARRAY_ARRAY = jnewArray3_Int(0, 0, 0);
    @this.NULL_FLOAT_ARRAY = array<float>(0);
    }

    NullUtil@ jinit_NullUtil()
    {
        this.jfields_NullUtil();
        return this;
    }
}

namespace NullUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullUtil().jinit_NullUtil();
    }

    NullUtil@ jcell_instance;
    NullUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NullUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    NullUtil@ getInstance()
    {
        return NullUtil::instance;
    }
}

