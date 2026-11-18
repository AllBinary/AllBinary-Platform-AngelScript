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
// package org.allbinary.logic.system.security.crypt.jcehelper

class SecretComposite : BaseSecretComposite
{
    ByteUtil@ byteUtil_SecretComposite;
    Cipher@ cipher_SecretComposite;
    SecretKey@ secretKey_SecretComposite;
    int8[]@ key_SecretComposite;

    // Java field initializers run after the super constructor
    void jfields_SecretComposite()
    {
    @this.byteUtil_SecretComposite = ByteUtil::getInstance();
    
    
    
    }
    

    SecretComposite@ jinit_SecretComposite(SecretKey@ secretKey, Cipher@ cipher, int8[]@ key)
    {
        this.jinit_BaseSecretComposite();
        this.jfields_SecretComposite();
        @this.secretKey_SecretComposite = secretKey;
        @this.cipher_SecretComposite = cipher;
        @this.key_SecretComposite = key;
        return this;
    }
    

    int8[]@ encrypt(int8[]@ array_)
    {
        @array_ = this.mutilate(array_);
        this.cipher_SecretComposite.init(Cipher::ENCRYPT_MODE, this.secretKey_SecretComposite);
        return this.cipher_SecretComposite.doFinal(array_);
    }
    

    int8[]@ decrypt(int8[]@ array_)
    {
        this.cipher_SecretComposite.init(Cipher::DECRYPT_MODE, this.secretKey_SecretComposite);
        return this.mutilate(this.cipher_SecretComposite.doFinal(array_));
    }
    

    int8[]@ mutilate(int8[]@ array_)
    {
        for (int index = 0; index < int(this.key_SecretComposite.length()); index++) {
            int8 value = this.key_SecretComposite[index];
            if (int(value) < 8 && int(value) > 0) {
                @array_ = this.byteUtil_SecretComposite.xorByte(array_, int(value));
            }
        }
        return array_;
    }
}

