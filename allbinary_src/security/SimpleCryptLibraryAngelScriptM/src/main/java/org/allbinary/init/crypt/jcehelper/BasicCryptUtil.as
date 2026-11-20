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
// package org.allbinary.init.crypt.jcehelper

class BasicCryptUtil : JObjectBase
{
    LogUtil@ logUtil;
    TsUtil@ tsUtil_BasicCryptUtil;
    string XML_START_BasicCryptUtil;

    // Java field initializers run after the super constructor
    void jfields_BasicCryptUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.tsUtil_BasicCryptUtil = TsUtil::getInstance();
    this.XML_START_BasicCryptUtil = "<?xml";
    }

    BasicCryptUtil@ jinit_BasicCryptUtil()
    {
        this.jfields_BasicCryptUtil();
        return this;
    }
    

    InputStream@ getDecryptedInputStream(InputStream@ inputStream, CryptInterface@ cryptInterface)
    {
        ByteArrayOutputStream@ buffer = ByteArrayOutputStream().jinit_ByteArrayOutputStream();
        int ch = 0;
        while (true) {
            ch = inputStream.read();
            if (ch == -1) {
                break;
            }
            buffer.write(ch);
        }
        int8[]@ decrypted = cryptInterface.decrypt(buffer.toByteArray());
        string decryptedString = String::newString(decrypted);
        int index = String::indexOf(decryptedString, this.XML_START_BasicCryptUtil);
        if (index > 0) {
            decryptedString = String::substring(decryptedString, index);
        }
        return ByteArrayInputStream().jinit_ByteArrayInputStream(this.tsUtil_BasicCryptUtil.getByteArray(decryptedString));
    }
}

namespace BasicCryptUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicCryptUtil().jinit_BasicCryptUtil();
    }

    BasicCryptUtil@ jcell_instance;
    BasicCryptUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicCryptUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicCryptUtil@ getInstance()
    {
        return BasicCryptUtil::instance;
    }
}

