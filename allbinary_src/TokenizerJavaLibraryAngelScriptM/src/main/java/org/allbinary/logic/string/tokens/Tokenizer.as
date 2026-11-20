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
// package org.allbinary.logic.string.tokens

class Tokenizer : JObjectBase
{
    string sep_Tokenizer;
    string endSep_Tokenizer;

    // Java field initializers run after the super constructor
    void jfields_Tokenizer()
    {
    
    this.endSep_Tokenizer = StringUtil::getInstance().EMPTY_STRING;
    }
    

    Tokenizer@ jinit_Tokenizer(string sep)
    {
        this.jfields_Tokenizer();
        if (TsUtil::getInstance().compareTo(sep, StringUtil::getInstance().EMPTY_STRING) == 0) {
            jthrow(Exception().jinit_Exception("Sep provided is not valid"));
        }
        this.sep_Tokenizer = sep;
        return this;
    }
    

    void setSep(string sep)
    {
        this.sep_Tokenizer = sep;
    }
    

    void setEndSep(string endSep)
    {
        this.endSep_Tokenizer = endSep;
    }
    

    BasicArrayList@ getInsideSep(string string_)
    {
        BasicArrayList@ tokenList = BasicArrayListD().jinit_BasicArrayListD();
        int index = 0;
        int size = int(string_.length());
        while (index < size) {
            index = String::indexOf(string_, this.sep_Tokenizer, index);
            if (index != -1) {
                int end = String::indexOf(string_, this.endSep_Tokenizer, index + int(this.sep_Tokenizer.length()));
                if (end != -1) {
                    tokenList.add(jbox(String::substring(string_, index + int(this.sep_Tokenizer.length()), end - (int(this.endSep_Tokenizer.length()) - 1))));
                    index = end + int(this.endSep_Tokenizer.length());
                } else {
                }
            } else {
                break;
            }
        }
        return tokenList;
    }
    

    BasicArrayList@ getTokensFromString(string string_, BasicArrayList@ tokenVector)
    {
        int index = 0;
        int end = 0;
        while (index < int(string_.length())) {
            end = String::indexOf(string_, this.sep_Tokenizer, index);
            if (end != -1) {
                tokenVector.add(jbox(String::substring(string_, index, end)));
                index = end + int(this.sep_Tokenizer.length());
            } else {
                tokenVector.add(jbox(String::substring(string_, index, int(string_.length()))));
                break;
            }
        }
        return tokenVector;
    }
    

    ABHashtable@ getTokens(BasicArrayList@ stringVector)
    {
        ABHashtable@ tokenHashtable = StdUtil::getInstance().createHashtable();
        string string_ = StringUtil::getInstance().EMPTY_STRING;
        int end = 0;
        int size = stringVector.size();
        for (int index = 0; index < size; index++) {
            string_ = jstringOf(stringVector.objectArray[index]);
            end = String::indexOf(string_, this.sep_Tokenizer);
            if (end >= 0) {
                tokenHashtable.put(String::substring(string_, 0, end), String::substring(string_, end + 1, int(string_.length())));
            }
        }
        return tokenHashtable;
    }
}

