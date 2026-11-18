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

class AbeClientInformationData : JObjectBase
{
    string KEY;
    string NAME;
    string VERSION;
    string SPECIALNAME;
    string LICENSEID;
    string LICENSE_TYPE;
    string PREVIOUSLICENSEID;
    string OSNAME;
    string OSARCH;
    string OSVERSION;
    string OS;
    string HARDWARE;
    string LICENSESERVERS;
    string NEWLICENSE;
    string ISNEW;
    string SPECIAL;

    // Java field initializers run after the super constructor
    void jfields_AbeClientInformationData()
    {
    this.KEY = "KEY";
    this.NAME = "NAME";
    this.VERSION = "VERSION";
    this.SPECIALNAME = "SPECIALNAME";
    this.LICENSEID = "LICENSEID";
    this.LICENSE_TYPE = "LICENSETYPE";
    this.PREVIOUSLICENSEID = "PREVIOUSLICENSEID";
    this.OSNAME = "OSNAME";
    this.OSARCH = "OSARCH";
    this.OSVERSION = "OSVERSION";
    this.OS = "OS";
    this.HARDWARE = "HARDWARE";
    this.LICENSESERVERS = "LICENSESERVERS";
    this.NEWLICENSE = "NEWLICENSE";
    this.ISNEW = "ISNEW";
    this.SPECIAL = "SPECIAL";
    }
    

    AbeClientInformationData@ jinit_AbeClientInformationData()
    {
        this.jfields_AbeClientInformationData();
        return this;
    }
}

namespace AbeClientInformationData
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AbeClientInformationData().jinit_AbeClientInformationData();
    }

    AbeClientInformationData@ jcell_instance;
    AbeClientInformationData@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AbeClientInformationData@ value) property { jclinit(); @jcell_instance = value; }
    

    AbeClientInformationData@ getInstance()
    {
        return AbeClientInformationData::instance;
    }
}

