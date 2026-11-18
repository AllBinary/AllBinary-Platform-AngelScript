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

interface ThirdPartyInApplicationPurchaseInterface : JObject
{
    bool isPurchased(LockableFeature@ lockableFeature);
    void onCreate(JObject@ anyType, JObject@ stateObject);
    void onDestroy();
    void onStart();
    void onActivityResult(int requestCode, int resultCode, JObject@ dataObject);
    void onSaveInstanceState(JObject@ anyType);
    void onStop();
    void requestPurchase(LockableFeature@ lockableFeature);
    void requestReceipts();
    void add(LockableFeature@ lockableFeature);
    string getUserName();
    bool isEnabled();
}

