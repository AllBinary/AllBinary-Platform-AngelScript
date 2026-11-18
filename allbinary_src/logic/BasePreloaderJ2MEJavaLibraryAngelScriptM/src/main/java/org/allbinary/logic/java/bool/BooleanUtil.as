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
// package org.allbinary.logic.java.bool

class BooleanUtil : JObjectBase
{
    TsUtil@ tsUtil;

    // Java field initializers run after the super constructor
    void jfields_BooleanUtil()
    {
    @this.tsUtil = TsUtil::getInstance();
    }
    

    BooleanUtil@ jinit_BooleanUtil()
    {
        this.jfields_BooleanUtil();
        return this;
    }
    

    bool getFromString(string booleanString)
    {
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        BooleanFactory@ booleanFactory = BooleanFactory::getInstance();
        if (stringValidationUtil.isEmpty(booleanString)) {
            return false;
        }
        string booleanStringLowerCase = String::toLowerCase(booleanString);
        if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0) {
            return true;
        } else if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return false;
        } else {
            jthrow(Exception().jinit_Exception("Invalid booleanString - Must be true or false"));
        }
        return false;
    }
    

    bool isStringBoolean(string booleanString)
    {
        BooleanFactory@ booleanFactory = BooleanFactory::getInstance();
        string booleanStringLowerCase = String::toLowerCase(booleanString);
        if (String::compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0 || String::compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return true;
        }
        return false;
    }
    

    string toStringFromBooleanArray(bool[]@ booleanArray)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        int size = int(booleanArray.length());
        for (int index = 0; index < size; index++) {
            stringMaker.appendboolean(booleanArray[index]);
        }
        return stringMaker.toString();
    }
}

namespace BooleanUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BooleanUtil().jinit_BooleanUtil();
    }

    BooleanUtil@ jcell_instance;
    BooleanUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BooleanUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    BooleanUtil@ getInstance()
    {
        return BooleanUtil::instance;
    }
}

