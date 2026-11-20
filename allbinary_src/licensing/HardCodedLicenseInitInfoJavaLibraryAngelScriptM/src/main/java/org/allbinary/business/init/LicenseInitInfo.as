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
    string id_LicenseInitInfo;
    BasicArrayList@ serverList_LicenseInitInfo;

    // Java field initializers run after the super constructor
    void jfields_LicenseInitInfo()
    {
    this.id_LicenseInitInfo = StringUtil::getInstance().EMPTY_STRING;
    @this.serverList_LicenseInitInfo = BasicArrayListD().jinit_BasicArrayListD();
    }
    

    LicenseInitInfo@ jinit_LicenseInitInfo()
    {
        this.jfields_LicenseInitInfo();
        return this;
    }
    

    string getLicenseId()
    {
        return this.id_LicenseInitInfo;
    }
    

    string getServer(int index)
    {
        return jstringOf(this.serverList_LicenseInitInfo.get(index));
    }
    

    int getNumberOfServers()
    {
        return this.serverList_LicenseInitInfo.size();
    }
    

    void setLicenseId(string value)
    {
        this.id_LicenseInitInfo = value;
    }
    

    void clearServers()
    {
        this.serverList_LicenseInitInfo.clear();
    }
    

    void setServer(string value, int index)
    {
        this.serverList_LicenseInitInfo.addAt(index, jbox(value));
    }
    

    void addServer(string value)
    {
        this.serverList_LicenseInitInfo.add(jbox(value));
    }
    

    BasicArrayList@ getServerList()
    {
        return this.serverList_LicenseInitInfo;
    }
    

    void setServerList(BasicArrayList@ servers)
    {
        if (DebugFactory::getInstance() is NoDebug::getInstance()) {
            @this.serverList_LicenseInitInfo = servers;
        }
    }
}

