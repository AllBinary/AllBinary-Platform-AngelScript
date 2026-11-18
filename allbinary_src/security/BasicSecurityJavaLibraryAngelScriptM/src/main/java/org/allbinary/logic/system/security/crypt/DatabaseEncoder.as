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
// package org.allbinary.logic.system.security.crypt

class DatabaseEncoder : JObjectBase
{
    

    DatabaseEncoder@ jinit_DatabaseEncoder()
    {
        return this;
    }
}

namespace DatabaseEncoder
{
    

    string encode(int8[]@ value)
    {
        try {
            int8[]@ array_ = value;
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            for (int index = 0; index < int(array_.length()); index++) {
                stringBuffer.append(JByte().jinit_JByte(array_[index]).toString());
                if (index < int(array_.length()) - 1) {
                    stringBuffer.append(CommonSeps::getInstance().SPACE);
                }
            }
            return stringBuffer.toString();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::putOE(commonStrings.EXCEPTION, jbox("DatabaseEncoder"), "decode", e);
            return StringUtil::getInstance().EMPTY_STRING;
            }
            else { jthrow(jex0); }
        }
        return "";
    }
    

    int8[]@ decode(string value)
    {
        try {
            Tokenizer@ tokenizer = Tokenizer().jinit_Tokenizer(CommonSeps::getInstance().SPACE);
            BasicArrayList@ vector = tokenizer.getTokensFromString(value, BasicArrayListD().jinit_BasicArrayListD());
            int size = vector.size();
            int8[]@ decode = array<int8>(size);
            string byteOfData = "";
            for (int index = 0; index < size; index++) {
                byteOfData = jstringOf(vector.objectArray[index]);
                decode[index] = Byte::parseByte(byteOfData);
            }
            return decode;
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::putSE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e);
            return NullUtil::getInstance().NULL_BYTE_ARRAY;
            }
            else { jthrow(jex1); }
        }
        return null;
    }
}

