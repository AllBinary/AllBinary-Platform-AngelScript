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
    BasicArrayList@ serverList;

    // Java field initializers run after the super constructor
    void jfields_LicenseInitInfo()
    {
    this.id = StringUtil::getInstance().EMPTY_STRING;
    @this.serverList = BasicArrayListD().jinit_BasicArrayListD();
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
        return jstringOf(this.serverList.get(index));
    }
    

    int getNumberOfServers()
    {
        return this.serverList.size();
    }
    

    void setLicenseId(string value)
    {
        this.id = value;
    }
    

    void clearServers()
    {
        this.serverList.clear();
    }
    

    void setServer(string value, int index)
    {
        this.serverList.addAt(index, jbox(value));
    }
    

    void addServer(string value)
    {
        this.serverList.add(jbox(value));
    }
    

    BasicArrayList@ getServerList()
    {
        return this.serverList;
    }
    

    void setServerList(BasicArrayList@ servers)
    {
        if (DebugFactory::getInstance() == NoDebug::getInstance()) {
            @this.serverList = servers;
        }
    }
}

