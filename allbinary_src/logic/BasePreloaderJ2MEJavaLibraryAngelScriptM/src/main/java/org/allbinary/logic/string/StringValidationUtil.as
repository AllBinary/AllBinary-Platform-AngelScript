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

class StringValidationUtil : JObjectBase
{
    StringUtil@ stringUtil_StringValidationUtil;
    TsUtil@ tsUtil_StringValidationUtil;

    // Java field initializers run after the super constructor
    void jfields_StringValidationUtil()
    {
    @this.stringUtil_StringValidationUtil = StringUtil::getInstance();
    @this.tsUtil_StringValidationUtil = TsUtil::getInstance();
    }
    

    StringValidationUtil@ jinit_StringValidationUtil()
    {
        this.jfields_StringValidationUtil();
        return this;
    }
    

    bool containsSpaces(string value)
    {
        if (String::indexOf(value, uint16(' ')) >= 0) {
            return true;
        }
        return false;
    }
    

    bool isNumber(string value)
    {
        int numberOfDecimalPoints = 0;
        for (int index = 0; index < int(value.length()); index++) {
            uint16 digit = String::charAt(value, index);
            if (!this.isNumberFromChar(digit) && digit != uint16('.')) {
                return false;
            }
            if (digit == uint16('.')) {
                numberOfDecimalPoints++;
                if (numberOfDecimalPoints > 1) {
                    return false;
                }
            }
        }
        return true;
    }
    

    bool isNumberFromChar(uint16 digit)
    {
        if (digit != uint16('0') && digit != uint16('1') && digit != uint16('2') && digit != uint16('3') && digit != uint16('4') && digit != uint16('5') && digit != uint16('6') && digit != uint16('7') && digit != uint16('8') && digit != uint16('9')) {
            return false;
        }
        return true;
    }
    

    bool isValidRequired(string value, int min, int max)
    {
        if (int(value.length()) < min || int(value.length()) > max) {
            return false;
        }
        return true;
    }
    

    bool isValidRequiredNumber(string value, int min, int max)
    {
        if (this.isEmpty(value) || int(value.length()) < min || int(value.length()) > max) {
            return false;
        }
        if (!this.isNumber(value)) {
            return false;
        }
        return true;
    }
    

    bool isValidNotRequired(string value, int min, int max)
    {
        if (int(value.length()) > 0) {
            if (int(value.length()) < min || int(value.length()) > max) {
                return false;
            }
        }
        return true;
    }
    

    bool isValidNotRequiredNumber(string value, int min, int max)
    {
        if (int(value.length()) > 0) {
            if (this.tsUtil_StringValidationUtil.compareTo(value, this.stringUtil_StringValidationUtil.NULL_STRING) == 0 || int(value.length()) < min || int(value.length()) > max) {
                return false;
            }
            if (!this.isNumber(value)) {
                return false;
            }
        }
        return true;
    }
    

    bool isEmpty(string string_)
    {
        if (this.tsUtil_StringValidationUtil.compareTo(string_, this.stringUtil_StringValidationUtil.NULL_STRING) != 0 && this.tsUtil_StringValidationUtil.compareTo(string_, this.stringUtil_StringValidationUtil.EMPTY_STRING) != 0) {
            return false;
        } else {
            return true;
        }
        return false;
    }
}

namespace StringValidationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = StringValidationUtil().jinit_StringValidationUtil();
    }

    StringValidationUtil@ jcell_instance;
    StringValidationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(StringValidationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    StringValidationUtil@ getInstance()
    {
        return StringValidationUtil::instance;
    }
}

