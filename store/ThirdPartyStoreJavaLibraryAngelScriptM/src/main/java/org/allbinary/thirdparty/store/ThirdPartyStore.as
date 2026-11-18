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

class ThirdPartyStore : JObjectBase
{
    bool authorized;
    string name;
    

    ThirdPartyStore@ jinit_ThirdPartyStore(string name)
    {
        this.name = name;
        return this;
    }
    

    void authorize(AbeClientInformationInterface@ clientInformationInterface)
    {
    }
    

    bool isAuthorized()
    {
        return this.authorized;
    }
    

    void setAuthorized(bool authorized)
    {
        this.authorized = authorized;
    }
    

    string getName()
    {
        return this.name;
    }
}

