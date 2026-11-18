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

class BaseSecretComposite : JObjectBase
{

    BaseSecretComposite@ jinit_BaseSecretComposite()
    {
        return this;
    }
    

    int8[]@ encrypt(int8[]@ array_)
    {
        return NullUtil::getInstance().NULL_BYTE_ARRAY;
    }
    

    int8[]@ decrypt(int8[]@ array_)
    {
        return NullUtil::getInstance().NULL_BYTE_ARRAY;
    }
}

namespace BaseSecretComposite
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_SECRET_COMPOSITE = BaseSecretComposite().jinit_BaseSecretComposite();
    }

    BaseSecretComposite@ jcell_NULL_SECRET_COMPOSITE;
    BaseSecretComposite@ get_NULL_SECRET_COMPOSITE() property { jclinit(); return jcell_NULL_SECRET_COMPOSITE; }
    void set_NULL_SECRET_COMPOSITE(BaseSecretComposite@ value) property { jclinit(); @jcell_NULL_SECRET_COMPOSITE = value; }
}

