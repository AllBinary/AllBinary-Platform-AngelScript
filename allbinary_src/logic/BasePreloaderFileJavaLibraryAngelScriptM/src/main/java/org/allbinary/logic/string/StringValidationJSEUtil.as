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

class StringValidationJSEUtil : JObjectBase
{
    

    StringValidationJSEUtil@ jinit_StringValidationJSEUtil()
    {
        return this;
    }
}

namespace StringValidationJSEUtil
{
    

    bool isBlank(string string_)
    {
        int len = int(string_.length());
        for (int i = 0; i < len; i++) {
            uint16 c = String::charAt(string_, i);
            if (Character::isWhitespace(c) == false) {
                return false;
            }
        }
        return true;
    }
}

