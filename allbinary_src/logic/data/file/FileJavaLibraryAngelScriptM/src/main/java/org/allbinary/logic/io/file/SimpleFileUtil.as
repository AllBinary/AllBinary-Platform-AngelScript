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
// package org.allbinary.logic.io.file

class SimpleFileUtil : JObjectBase
{
    LogUtil@ logUtil;
    Writer@ NULL_WRITER;
    Reader@ NULL_READER;
    CommonStrings@ commonStrings_SimpleFileUtil;
    NullUtil@ nullUtil_SimpleFileUtil;
    StreamUtil@ streamUtil_SimpleFileUtil;

    // Java field initializers run after the super constructor
    void jfields_SimpleFileUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.NULL_WRITER = SimpleFileUtil::nullWriter();
    @this.NULL_READER = SimpleFileUtil::nullReader();
    @this.commonStrings_SimpleFileUtil = CommonStrings::getInstance();
    @this.nullUtil_SimpleFileUtil = NullUtil::getInstance();
    @this.streamUtil_SimpleFileUtil = StreamUtil::getInstance();
    }

    SimpleFileUtil@ jinit_SimpleFileUtil()
    {
        this.jfields_SimpleFileUtil();
        return this;
    }
    

    BasicArrayList@ loadFileAsList(InputStream@ inputStream, int max, int8[]@ byteArray1)
    {
        return this.loadFileAsListReturnLine(inputStream, max, byteArray1, 0);
    }
    

    BasicArrayList@ loadFileAsListReturnLine(InputStream@ inputStream, int max, int8[]@ byteArray1, int includeReturnLine)
    {
        BasicArrayList@ stringList = BasicArrayListD().jinit_BasicArrayListD();
        if (inputStream is null) {
            return stringList;
        }
        int8[]@ byteArray = this.nullUtil_SimpleFileUtil.NULL_BYTE_ARRAY;
        try {
            ByteArrayOutputStream@ outputStream2 = ByteArrayOutputStream().jinit_ByteArrayOutputStream(max);
            @byteArray = this.streamUtil_SimpleFileUtil.getByteArray(inputStream, outputStream2, byteArray1);
            this.streamUtil_SimpleFileUtil.close(inputStream);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.streamUtil_SimpleFileUtil.close(inputStream);
            this.logUtil.put(this.commonStrings_SimpleFileUtil.EXCEPTION, this, this.commonStrings_SimpleFileUtil.ADD, e);
            }
            else { jthrow(jex0); }
        }
        if (byteArray is null) {
            return stringList;
        }
        int size = int(byteArray.length());
        int index = 0;
        int startIndex = 0;
        int returnLine = 0;
        while (index < size) {
            startIndex = index;
            while (index < size - 1 && byteArray[index] != int8(uint16('\n'))) {
                index++;
            }
            if (includeReturnLine == 0) {
                if (index > 0 && byteArray[index - 1] == int8(uint16('\r'))) {
                    returnLine = 1;
                } else {
                    returnLine = 0;
                }
            }
            string s = String::newString(byteArray, startIndex, (index + includeReturnLine - returnLine - startIndex));
            stringList.add(jbox(s));
            index++;
        }
        return stringList;
    }
    

    string createStringFromArrayOfStrings(string[]@ stringArray)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        int size = int(stringArray.length());
        for (int index = 0; index < size; index++) {
            stringMaker.append(stringArray[index]);
        }
        return stringMaker.toString();
    }
}

namespace SimpleFileUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SimpleFileUtil().jinit_SimpleFileUtil();
    }

    SimpleFileUtil@ jcell_instance;
    SimpleFileUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SimpleFileUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    SimpleFileUtil@ getInstance()
    {
        return SimpleFileUtil::instance;
    }
    

    OutputStream@ nullOutputStream()
    {
        return NullOutputStream::NULL_OUTPUT_STREAM;
    }
    

    Writer@ nullWriter()
    {
        return NullWriter::NULL_WRITER;
    }
    

    Reader@ nullReader()
    {
        return NullReader::NULL_READER;
    }
}

