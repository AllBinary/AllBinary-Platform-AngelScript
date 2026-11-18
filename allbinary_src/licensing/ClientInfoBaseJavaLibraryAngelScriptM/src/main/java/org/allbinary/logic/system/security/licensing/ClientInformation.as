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

// This is the information sent to the license server
class ClientInformation : JObjectBase, AbeClientInformationInterface
{
    GenericOperatingSystem@ operatingSystemInterface;
    TsUtil@ tsUtil;
    string name;
    string shortName;
    string version;
    string specialName;
    bool hardSale;
    string licenseId;
    BasicArrayList@ licenseServers;

    // Java field initializers run after the super constructor
    void jfields_ClientInformation()
    {
    @this.operatingSystemInterface = NoOperatingSystem::NO_OPERATING_SYSTEM;
    @this.tsUtil = TsUtil::getInstance();
    
    
    
    
    this.hardSale = true;
    this.licenseId = StringUtil::getInstance().EMPTY_STRING;
    @this.licenseServers = BasicArrayListUtil::getInstance().getImmutableInstance();
    }
    

    ClientInformation@ jinit_ClientInformation(string name, string version, string specialName, string shortName)
    {
        this.jfields_ClientInformation();
        this.name = name;
        this.version = version;
        this.specialName = specialName;
        this.shortName = StringMaker().jinit_StringMaker().append(shortName).append(CommonSeps::getInstance().UNDERSCORE).append(version).toString();
        this.init();
        return this;
    }
    

    void init()
    {
    }
    

    GenericOperatingSystem@ getOperatingSystemInterface()
    {
        return this.operatingSystemInterface;
    }
    

    string getName()
    {
        return this.name;
    }
    

    string getSpecialName()
    {
        return this.specialName;
    }
    

    string getVersion()
    {
        return this.version;
    }
    

    string getLicenseId()
    {
        return this.licenseId;
    }
    

    BasicArrayList@ getLicenseServers()
    {
        return this.licenseServers;
    }
    

    string getLicenseServer(int index)
    {
        return jstringOf(this.licenseServers.objectArray[index]);
    }
    

    int getNumberOfLicenseServers()
    {
        return this.licenseServers.size();
    }
    

    ABHashtable@ toHashtable()
    {
        AbeClientInformationData@ abeClientInformationData = AbeClientInformationData::getInstance();
        GenericOperatingSystem@ genericOperatingSystem = this.getOperatingSystemInterface();
        ABHashtable@ clientInfoHashtable = StdUtil::getInstance().createHashtable();
        clientInfoHashtable.put(abeClientInformationData.NAME, this.name);
        clientInfoHashtable.put(abeClientInformationData.VERSION, this.version);
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, this.specialName);
        clientInfoHashtable.put(abeClientInformationData.LICENSEID, this.getLicenseId());
        clientInfoHashtable.put(abeClientInformationData.OSNAME, genericOperatingSystem.getName());
        clientInfoHashtable.put(abeClientInformationData.OSARCH, genericOperatingSystem.getArch());
        clientInfoHashtable.put(abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion());
        clientInfoHashtable.put(abeClientInformationData.OS, genericOperatingSystem.toString());
        HardwareInterface@ hardwareInterface = SystemHardwareFactory::getInstance_jstatic().getInstance(genericOperatingSystem);
        string hardwareString = hardwareInterface.toString();
        clientInfoHashtable.put(abeClientInformationData.HARDWARE, hardwareString);
        return clientInfoHashtable;
    }
    

    bool isSameId(string alicenseId)
    {
        if (this.tsUtil.compareTo(this.getLicenseId(), alicenseId) == 0) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    bool isLargerOrDifferentServerList(BasicArrayList@ list)
    {
        int size = list.size() - 1;
        int currentSize = this.licenseServers.size() - 1;
        if (size > currentSize) {
            return true;
        }
        for (int index = size; index >= 0; index--) {
            string newServerName = jstringOf(list.objectArray[index]);
            for (int index2 = currentSize; index2 >= 0; index2--) {
                string nextOldServerName = jstringOf(this.licenseServers.objectArray[index]);
                if (this.tsUtil.compareTo(newServerName, nextOldServerName) != 0) {
                    return true;
                }
            }
        }
        return false;
    }
    

    void setHardSale(bool hardSale)
    {
        this.hardSale = hardSale;
    }
    

    bool isHardSale()
    {
        return this.hardSale;
    }
    

    void setOperatingSystemInterface(GenericOperatingSystem@ operatingSystemInterface)
    {
        @this.operatingSystemInterface = operatingSystemInterface;
    }
    

    void setLicenseId(string licenseId)
    {
        this.licenseId = licenseId;
    }
    

    void setLicenseServers(BasicArrayList@ licenseServers)
    {
        @this.licenseServers = licenseServers;
    }
    

    string toShortString()
    {
        return this.shortName;
    }
}

