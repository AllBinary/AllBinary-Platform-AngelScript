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
// package org.allbinary.data

class CamelCaseUtil : JObjectBase
{
    CommonSeps@ commonSeps_CamelCaseUtil;

    // Java field initializers run after the super constructor
    void jfields_CamelCaseUtil()
    {
    @this.commonSeps_CamelCaseUtil = CommonSeps::getInstance();
    }

    CamelCaseUtil@ jinit_CamelCaseUtil()
    {
        this.jfields_CamelCaseUtil();
        return this;
    }
    

    string getAsCamelCase(string string_, StringMaker@ stringBuilder)
    {
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        stringBuilder.delete(0, stringBuilder.length());
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        Tokenizer@ tokenizer = Tokenizer().jinit_Tokenizer(this.commonSeps_CamelCaseUtil.UNDERSCORE);
        tokenizer.getTokensFromString(string_, list);
        int size = list.size();
        string word = "";
        for (int i = 0; i < size; i++) {
            word = jstringOf(list.get(i));
            word = (stringValidationUtil.isEmpty(word) ? word : StringMaker().jinit_StringMaker().appendchar(Character::toUpperCase(String::charAt(word, 0))).append(String::toLowerCase(String::substring(word, 1))).toString());
            stringBuilder.append(word);
        }
        return stringBuilder.toString();
    }
}

namespace CamelCaseUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = CamelCaseUtil().jinit_CamelCaseUtil();
    }

    CamelCaseUtil@ jcell_instance;
    CamelCaseUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(CamelCaseUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    CamelCaseUtil@ getInstance()
    {
        return CamelCaseUtil::instance;
    }
}

