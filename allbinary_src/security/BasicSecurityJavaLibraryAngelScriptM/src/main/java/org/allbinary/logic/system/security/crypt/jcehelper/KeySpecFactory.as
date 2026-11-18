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

class KeySpecFactory : JObjectBase
{
    string DES;
    string DESEDE;
    string BLOWFISH;

    // Java field initializers run after the super constructor
    void jfields_KeySpecFactory()
    {
    this.DES = "DES";
    this.DESEDE = "DESede";
    this.BLOWFISH = "Blowfish";
    }
    

    KeySpecFactory@ jinit_KeySpecFactory()
    {
        this.jfields_KeySpecFactory();
        return this;
    }
    

    KeySpec@ getInstance(string algorithm, int8[]@ keyData)
    {
        try {
            TsUtil@ tsUtil = TsUtil::getInstance();
            if (tsUtil.compareTo(algorithm, this.DES) == 0) {
                return DESKeySpec().jinit_DESKeySpec(keyData);
            } else if (tsUtil.compareTo(algorithm, this.DESEDE) == 0) {
                return DESedeKeySpec().jinit_DESedeKeySpec(keyData);
            } else {
                jthrow(RuntimeException().jinit_RuntimeException());
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::putOE(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            jthrow(RuntimeException().jinit_RuntimeException());
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

namespace KeySpecFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = KeySpecFactory().jinit_KeySpecFactory();
    }

    KeySpecFactory@ jcell_instance;
    KeySpecFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(KeySpecFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    KeySpecFactory@ getInstance_jstatic()
    {
        return KeySpecFactory::instance;
    }
}

