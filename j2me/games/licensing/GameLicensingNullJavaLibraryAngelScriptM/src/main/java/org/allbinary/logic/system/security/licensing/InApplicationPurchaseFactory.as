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
// package org.allbinary.logic.system.security.licensing

class InApplicationPurchaseFactory : JObjectBase
{
    

    InApplicationPurchaseFactory@ jinit_InApplicationPurchaseFactory()
    {
        return this;
    }
    

    void init(JObject@ anyType, JObject@ stateObject)
    {
    }
    

    void onCreate(JObject@ anyType, JObject@ stateObject)
    {
    }
    

    void onStart()
    {
    }
    

    void onResult(int requestCode, int resultCode, JObject@ data)
    {
    }
    

    void onSaveState(JObject@ anyType)
    {
    }
    

    void onStop()
    {
    }
    

    void onDestroy()
    {
    }
    

    void purchase(LockableFeature@ lockableFeature)
    {
    }
    

    bool isPurchased(LockableFeature@ lockableFeature)
    {
        return false;
    }
    

    void add(LockableFeature@ lockableFeature)
    {
    }
    

    string getUserName()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    bool isEnabled()
    {
        return false;
    }
}

namespace InApplicationPurchaseFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = InApplicationPurchaseFactory().jinit_InApplicationPurchaseFactory();
    }

    InApplicationPurchaseFactory@ jcell_instance;
    InApplicationPurchaseFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(InApplicationPurchaseFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    InApplicationPurchaseFactory@ getInstance()
    {
        return InApplicationPurchaseFactory::instance;
    }
}

