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

class AbCrypt : JObjectBase, CryptInterface
{
    TsUtil@ tsUtil;
    BaseSecretComposite@ secretComposite;
    string algorithm;

    // Java field initializers run after the super constructor
    void jfields_AbCrypt()
    {
    @this.tsUtil = TsUtil::getInstance();
    @this.secretComposite = BaseSecretComposite::NULL_SECRET_COMPOSITE;
    
    }
    

    AbCrypt@ jinit_AbCrypt(string algorithm)
    {
        this.jfields_AbCrypt();
        this.algorithm = algorithm;
        return this;
    }
    

    void init(string keyAsString)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        try {
            try {
                Security::addProvider(BouncyCastleProvider().jinit_BouncyCastleProvider());
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<Exception>(jex1) !is null) {
                    Exception@ e = cast<Exception>(jex1);
                PreLogUtil::putOE(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
                }
                else { jthrow(jex1); }
            }
            int8[]@ key = this.tsUtil.getByteArray(keyAsString);
            KeySpec@ keySpec = KeySpecFactory::getInstance_jstatic().getInstance(this.algorithm, key);
            SecretKeyFactory@ keyFactory = SecretKeyFactory::getInstance(this.algorithm);
            SecretKey@ secretKey = keyFactory.generateSecret(keySpec);
            Cipher@ cipher = Cipher::getInstance(this.algorithm);
            @this.secretComposite = SecretComposite().jinit_SecretComposite(secretKey, cipher, key);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::putOE("init Failed", this, commonStrings.INIT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    int8[]@ encrypt(int8[]@ array_)
    {
        try {
            return this.secretComposite.encrypt(array_);
        } catch {
            Throwable@ jex2 = jcatch();
            if (cast<Exception>(jex2) !is null) {
                Exception@ e = cast<Exception>(jex2);
            PreLogUtil::putOE("Encrypt Failed", this, "encrypt", e);
            return NullUtil::getInstance().NULL_BYTE_ARRAY;
            }
            else { jthrow(jex2); }
        }
        return null;
    }
    

    int8[]@ decrypt(int8[]@ array_)
    {
        try {
            return this.secretComposite.decrypt(array_);
        } catch {
            Throwable@ jex3 = jcatch();
            if (cast<Exception>(jex3) !is null) {
                Exception@ e = cast<Exception>(jex3);
            PreLogUtil::putOE("decrypt Failed", this, "decrypt", e);
            return NullUtil::getInstance().NULL_BYTE_ARRAY;
            }
            else { jthrow(jex3); }
        }
        return null;
    }
}

