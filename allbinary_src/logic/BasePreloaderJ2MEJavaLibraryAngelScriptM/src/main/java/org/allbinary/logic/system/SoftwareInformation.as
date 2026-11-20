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
// package org.allbinary.logic.system

class SoftwareInformation : JObjectBase
{
    string name_SoftwareInformation;
    string shortName_SoftwareInformation;
    string version_SoftwareInformation;
    

    SoftwareInformation@ jinit_SoftwareInformation(string name, string version, string shortName)
    {
        this.name_SoftwareInformation = name;
        this.version_SoftwareInformation = version;
        this.shortName_SoftwareInformation = StringMaker().jinit_StringMaker().append(shortName).append(KotlinUtil::getShortName()).toString();
        return this;
    }
    

    string getName()
    {
        return this.name_SoftwareInformation;
    }
    

    string getVersion()
    {
        return this.version_SoftwareInformation;
    }
    

    string toShortString()
    {
        return this.shortName_SoftwareInformation;
    }
    

    string toString()
    {
        string NAME = "Name: ";
        string VERSION = "Version: ";
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(NAME);
        stringBuffer.append(this.getName());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(VERSION);
        stringBuffer.append(this.getVersion());
        return stringBuffer.toString();
    }
}

