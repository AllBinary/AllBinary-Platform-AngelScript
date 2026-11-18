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
// package org.allbinary.logic.string

class StringUtil : JObjectBase
{
    string INIT_STRING;
    string NULL_STRING;
    string EMPTY_STRING;
    string[]@ ONE_EMPTY_STRING_ARRAY;
    string[]@[]@ ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    string[]@ stringArray;

    // Java field initializers run after the super constructor
    void jfields_StringUtil()
    {
    this.INIT_STRING = String::newString("");
    this.NULL_STRING = "null";
    this.EMPTY_STRING = "";
    @this.ONE_EMPTY_STRING_ARRAY = array<string> = {this.EMPTY_STRING};
    @this.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = jnewArray2_String(0, 0);
    @this.stringArray = array<string>(0);
    }
    

    StringUtil@ jinit_StringUtil()
    {
        this.jfields_StringUtil();
        return this;
    }
    

    string getNonNull(string string_)
    {
        return string_;
    }
    

    string[]@ getArrayInstance()
    {
        return this.stringArray;
    }
    

    int count(string string_, uint16 aChar)
    {
        int count = 0;
        int size = int(string_.length());
        for (int index = 0; index < size; index++) {
            if (String::charAt(string_, index) == aChar) {
                count++;
            }
        }
        return count;
    }
    

    string toString(JObject@ anyType)
    {
        if (anyType !is null) {
            return anyType.toString();
        } else {
            return this.NULL_STRING;
        }
        return "";
    }
}

namespace StringUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = StringUtil().jinit_StringUtil();
    }

    StringUtil@ jcell_instance;
    StringUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(StringUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    StringUtil@ getInstance()
    {
        return StringUtil::instance;
    }
}

