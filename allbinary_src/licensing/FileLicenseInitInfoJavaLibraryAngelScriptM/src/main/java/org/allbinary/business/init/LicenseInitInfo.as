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
// package org.allbinary.business.init

class LicenseInitInfo : JObjectBase
{
    string id;
    BasicArrayList@ serverVector;

    // Java field initializers run after the super constructor
    void jfields_LicenseInitInfo()
    {
    this.id = StringUtil::getInstance().EMPTY_STRING;
    @this.serverVector = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    LicenseInitInfo@ jinit_LicenseInitInfo()
    {
        this.jfields_LicenseInitInfo();
        return this;
    }
    

    string getLicenseId()
    {
        return this.id;
    }
    

    string getServer(int index)
    {
        return jstringOf(this.serverVector.objectArray[index]);
    }
    

    int getNumberOfServers()
    {
        return this.serverVector.size();
    }
    

    void setLicenseId(string value)
    {
        this.id = value;
    }
    

    void clearServers()
    {
        @this.serverVector = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    void setServer(string value, int index)
    {
        this.serverVector.addAt(index, jbox(value));
    }
    

    void addServer(string value)
    {
        this.serverVector.add(jbox(value));
    }
    

    BasicArrayList@ getServerList()
    {
        return this.serverVector;
    }
    

    void setServerList(BasicArrayList@ servers)
    {
        if (DebugFactory::getInstance() == NoDebug::getInstance()) {
            @this.serverVector = servers;
        }
    }
}

