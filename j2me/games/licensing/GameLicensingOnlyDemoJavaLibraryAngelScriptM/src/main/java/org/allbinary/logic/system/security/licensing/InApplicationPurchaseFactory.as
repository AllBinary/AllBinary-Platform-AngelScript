/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
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

