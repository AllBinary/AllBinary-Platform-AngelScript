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
// package org.allbinary.thirdparty.store

class ThirdPartyStoreFactory : JObjectBase
{
    

    ThirdPartyStoreFactory@ jinit_ThirdPartyStoreFactory()
    {
        return this;
    }
}

namespace ThirdPartyStoreFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NoThirdPartyStore().jinit_NoThirdPartyStore();
    }

    NoThirdPartyStore@ jcell_instance;
    NoThirdPartyStore@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NoThirdPartyStore@ value) property { jclinit(); @jcell_instance = value; }
    

    ThirdPartyStore@ getInstance()
    {
        return ThirdPartyStoreFactory::instance;
    }
}

