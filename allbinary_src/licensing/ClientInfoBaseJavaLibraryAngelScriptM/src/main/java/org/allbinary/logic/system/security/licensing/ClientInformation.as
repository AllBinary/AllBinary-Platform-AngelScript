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
    GenericOperatingSystem@ operatingSystemInterface_ClientInformation;
    TsUtil@ tsUtil_ClientInformation;
    string name_ClientInformation;
    string shortName_ClientInformation;
    string version_ClientInformation;
    string specialName_ClientInformation;
    bool hardSale_ClientInformation;
    string licenseId_ClientInformation;
    BasicArrayList@ licenseServers_ClientInformation;

    // Java field initializers run after the super constructor
    void jfields_ClientInformation()
    {
    @this.operatingSystemInterface_ClientInformation = NoOperatingSystem::NO_OPERATING_SYSTEM;
    @this.tsUtil_ClientInformation = TsUtil::getInstance();
    
    
    
    
    this.hardSale_ClientInformation = true;
    this.licenseId_ClientInformation = StringUtil::getInstance().EMPTY_STRING;
    @this.licenseServers_ClientInformation = BasicArrayListUtil::getInstance().getImmutableInstance();
    }
    

    ClientInformation@ jinit_ClientInformation(string name, string version, string specialName, string shortName)
    {
        this.jfields_ClientInformation();
        this.name_ClientInformation = name;
        this.version_ClientInformation = version;
        this.specialName_ClientInformation = specialName;
        this.shortName_ClientInformation = StringMaker().jinit_StringMaker().append(shortName).append(CommonSeps::getInstance().UNDERSCORE).append(version).toString();
        this.init();
        return this;
    }
    

    void init()
    {
    }
    

    GenericOperatingSystem@ getOperatingSystemInterface()
    {
        return this.operatingSystemInterface_ClientInformation;
    }
    

    string getName()
    {
        return this.name_ClientInformation;
    }
    

    string getSpecialName()
    {
        return this.specialName_ClientInformation;
    }
    

    string getVersion()
    {
        return this.version_ClientInformation;
    }
    

    string getLicenseId()
    {
        return this.licenseId_ClientInformation;
    }
    

    BasicArrayList@ getLicenseServers()
    {
        return this.licenseServers_ClientInformation;
    }
    

    string getLicenseServer(int index)
    {
        return jstringOf(this.licenseServers_ClientInformation.objectArray[index]);
    }
    

    int getNumberOfLicenseServers()
    {
        return this.licenseServers_ClientInformation.size();
    }
    

    ABHashtable@ toHashtable()
    {
        AbeClientInformationData@ abeClientInformationData = AbeClientInformationData::getInstance();
        GenericOperatingSystem@ genericOperatingSystem = this.getOperatingSystemInterface();
        ABHashtable@ clientInfoHashtable = StdUtil::getInstance().createHashtable();
        clientInfoHashtable.put(abeClientInformationData.NAME, this.name_ClientInformation);
        clientInfoHashtable.put(abeClientInformationData.VERSION, this.version_ClientInformation);
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, this.specialName_ClientInformation);
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
        if (this.tsUtil_ClientInformation.compareTo(this.getLicenseId(), alicenseId) == 0) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    bool isLargerOrDifferentServerList(BasicArrayList@ list)
    {
        int size = list.size() - 1;
        int currentSize = this.licenseServers_ClientInformation.size() - 1;
        if (size > currentSize) {
            return true;
        }
        for (int index = size; index >= 0; index--) {
            string newServerName = jstringOf(list.objectArray[index]);
            for (int index2 = currentSize; index2 >= 0; index2--) {
                string nextOldServerName = jstringOf(this.licenseServers_ClientInformation.objectArray[index]);
                if (this.tsUtil_ClientInformation.compareTo(newServerName, nextOldServerName) != 0) {
                    return true;
                }
            }
        }
        return false;
    }
    

    void setHardSale(bool hardSale)
    {
        this.hardSale_ClientInformation = hardSale;
    }
    

    bool isHardSale()
    {
        return this.hardSale_ClientInformation;
    }
    

    void setOperatingSystemInterface(GenericOperatingSystem@ operatingSystemInterface)
    {
        @this.operatingSystemInterface_ClientInformation = operatingSystemInterface;
    }
    

    void setLicenseId(string licenseId)
    {
        this.licenseId_ClientInformation = licenseId;
    }
    

    void setLicenseServers(BasicArrayList@ licenseServers)
    {
        @this.licenseServers_ClientInformation = licenseServers;
    }
    

    string toShortString()
    {
        return this.shortName_ClientInformation;
    }
}

