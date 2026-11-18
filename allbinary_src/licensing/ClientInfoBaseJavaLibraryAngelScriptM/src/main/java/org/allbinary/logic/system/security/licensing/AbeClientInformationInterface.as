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

interface AbeClientInformationInterface : JObject
{
    void init();
    GenericOperatingSystem@ getOperatingSystemInterface();
    string getName();
    string getSpecialName();
    string getVersion();
    string getLicenseId();
    BasicArrayList@ getLicenseServers();
    string getLicenseServer(int index);
    int getNumberOfLicenseServers();
    ABHashtable@ toHashtable();
    bool isSameId(string alicenseId);
    bool isLargerOrDifferentServerList(BasicArrayList@ vector);
    bool isHardSale();
    string toShortString();
}

