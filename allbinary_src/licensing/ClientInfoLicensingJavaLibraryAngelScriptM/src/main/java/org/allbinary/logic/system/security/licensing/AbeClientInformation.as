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
class AbeClientInformation : ClientInformation
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_AbeClientInformation()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    AbeClientInformation@ jinit_AbeClientInformation(string name, string version, string specialName, string shortName)
    {
        this.jinit_ClientInformation(name, version, specialName, shortName);
        this.jfields_AbeClientInformation();
        return this;
    }
    

    void init()
    {
        try {
            this.setOperatingSystemInterface(OperatingSystemFactory::getInstance().getOperatingSystemInstance());
            LicenseInitInfo@ licenseInitInfo = LicenseInitInfoUtil::getInstance().read();
            this.setLicenseId(licenseInitInfo.getLicenseId());
            this.setLicenseServers(licenseInitInfo.getServerList());
            StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
            if (stringValidationUtil.isEmpty(this.getLicenseId())) {
                string NONE = "No License Id";
                this.setLicenseId(NONE);
            }
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::put(StringMaker().jinit_StringMaker().append("Special Name: ").append(this.getSpecialName()).toString(), this, commonStrings.CONSTRUCTOR);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            LogUtil@ logUtil = LogUtil::getInstance();
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
            else { jthrow(jex0); }
        }
    }
}

