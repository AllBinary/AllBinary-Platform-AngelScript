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

class LicenseInitInfoUtil : JObjectBase
{
    string INITFILENAME;
    string ABOUT;
    string PRIVACY_POLICY;
    string OFFICIAL_ALLBINARY_SERVICES_SERVER;

    // Java field initializers run after the super constructor
    void jfields_LicenseInitInfoUtil()
    {
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php";
    }
    

    void setFilePath(string filePath)
    {
    }
    

    LicenseInitInfoUtil@ jinit_LicenseInitInfoUtil()
    {
        this.jfields_LicenseInitInfoUtil();
        return this;
    }
    

    void write(LicenseInitInfo@ initData)
    {
    }
    

    LicenseInitInfo@ read()
    {
        return this.readAgain(0);
    }
    

    LicenseInitInfo@ readAgain(int initializeCounter)
    {
        LicenseInitInfo@ licenseInitInfo = LicenseInitInfo().jinit_LicenseInitInfo();
        licenseInitInfo.clearServers();
        licenseInitInfo.addServer(this.OFFICIAL_ALLBINARY_SERVICES_SERVER);
        return licenseInitInfo;
    }
}

namespace LicenseInitInfoUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LicenseInitInfoUtil().jinit_LicenseInitInfoUtil();
    }

    LicenseInitInfoUtil@ jcell_instance;
    LicenseInitInfoUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LicenseInitInfoUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    LicenseInitInfoUtil@ getInstance()
    {
        return LicenseInitInfoUtil::instance;
    }
}

