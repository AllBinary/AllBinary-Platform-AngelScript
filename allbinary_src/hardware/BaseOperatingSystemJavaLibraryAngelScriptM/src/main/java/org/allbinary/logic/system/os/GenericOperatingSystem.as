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
// package org.allbinary.logic.system.os

class GenericOperatingSystem : JObjectBase, OperatingSystemInterface
{
    string osName_GenericOperatingSystem;
    string osArch_GenericOperatingSystem;
    string osVersion_GenericOperatingSystem;
    CharacterSet@ characterSet_GenericOperatingSystem;
    bool scalable;

    // Java field initializers run after the super constructor
    void jfields_GenericOperatingSystem()
    {
    
    
    
    @this.characterSet_GenericOperatingSystem = CharacterSet().jinit_CharacterSet();
    this.scalable = false;
    }
    

    GenericOperatingSystem@ jinit_GenericOperatingSystem()
    {
        this.jfields_GenericOperatingSystem();
        SystemProperties@ systemProperties = SystemProperties::getInstance();
        StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
        string EMPTY_STRING = StringUtil::getInstance().EMPTY_STRING;
        if (stringValidationUtil.isEmpty(systemProperties.getName())) {
            this.osName_GenericOperatingSystem = EMPTY_STRING;
        } else {
            this.osName_GenericOperatingSystem = systemProperties.getName();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getArch())) {
            this.osArch_GenericOperatingSystem = EMPTY_STRING;
        } else {
            this.osArch_GenericOperatingSystem = systemProperties.getArch();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getVersion())) {
            this.osVersion_GenericOperatingSystem = EMPTY_STRING;
        } else {
            this.osVersion_GenericOperatingSystem = systemProperties.getVersion();
        }
        return this;
    }
    

    string getName()
    {
        return this.osName_GenericOperatingSystem;
    }
    

    string getVersion()
    {
        return this.osVersion_GenericOperatingSystem;
    }
    

    string getArch()
    {
        return this.osArch_GenericOperatingSystem;
    }
    

    CharacterSet@ getCharacterSet()
    {
        return this.characterSet_GenericOperatingSystem;
    }
    

    bool isOverScan()
    {
        return false;
    }
    

    int getOverScanXPercent()
    {
        return 100;
    }
    

    int getOverScanYPercent()
    {
        return 100;
    }
    

    bool isScalable()
    {
        return this.scalable;
    }
    

    bool isAutoHide()
    {
        return false;
    }
    

    string toString()
    {
        string NEW_LINE = CommonSeps::getInstance().NEW_LINE;
        StringMaker@ osBuffer = StringMaker().jinit_StringMaker();
        osBuffer.append("Operating System Info: \n");
        osBuffer.append(this.getName());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getArch());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getVersion());
        osBuffer.append(NEW_LINE);
        osBuffer.append(StringUtil::getInstance().toString(this.getCharacterSet()));
        osBuffer.append(NEW_LINE);
        return osBuffer.toString();
    }
}

