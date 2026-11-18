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
// package org.allbinary.logic.system.security.crypt.jcehelper

class BasicCrypt : JObjectBase, CryptInterface
{
    ByteUtil@ byteUtil;
    int8[]@ key;

    // Java field initializers run after the super constructor
    void jfields_BasicCrypt()
    {
    @this.byteUtil = ByteUtil::getInstance();
    
    }
    

    BasicCrypt@ jinit_BasicCrypt(string keyAsString)
    {
        this.jfields_BasicCrypt();
        int8[]@ key = NullUtil::getInstance().NULL_BYTE_ARRAY;
        try {
            @key = TsUtil::getInstance().getByteArray(keyAsString);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::putOE(commonStrings.EXCEPTION, this, "AbCrypt(alg,key)", e);
            }
            else { jthrow(jex0); }
        }
        @this.key = key;
        return this;
    }
    

    int8[]@ encrypt(int8[]@ array_)
    {
        try {
            return this.mutilate(array_);
        } catch {
            Throwable@ jex1 = jcatch();
            if (cast<Exception>(jex1) !is null) {
                Exception@ e = cast<Exception>(jex1);
            PreLogUtil::putOE("Encrypt Failed", this, "encrypt", e);
            return NullUtil::getInstance().NULL_BYTE_ARRAY;
            }
            else { jthrow(jex1); }
        }
        return null;
    }
    

    int8[]@ decrypt(int8[]@ array_)
    {
        try {
            return this.mutilate(array_);
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            PreLogUtil::putOE("decrypt Failed", this, "decrypt", e);
            return NullUtil::getInstance().NULL_BYTE_ARRAY;
            }
            else { jthrow(jex2); }
        }
        return null;
    }
    

    int8[]@ mutilate(int8[]@ array_)
    {
        int8 value = 0;
        for (int index = 0; index < int(this.key.length()); index++) {
            value = this.key[index];
            @array_ = this.byteUtil.xor_(array_, value);
        }
        return array_;
    }
}

