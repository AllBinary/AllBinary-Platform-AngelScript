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
// package org.allbinary.game.midlet

class SpecialDemoGameMidlet : DemoGameMidlet
{
    

    SpecialDemoGameMidlet@ jinit_SpecialDemoGameMidlet(ClientInformationFactory@ clientInformationFactory, LicenseLoadingType@ licenseLoadingType, LicensedDemoSetupFactory@ demoSetupFactory, LicenseCheckRunnableFactory@ licenseCheckRunnableFactory)
    {
        this.jinit_DemoGameMidlet(clientInformationFactory);
        return this;
    }
    

    void initView()
    {
    }
    

    void preInit()
    {
        LicenseServerInitFileUtil().jinit_LicenseServerInitFileUtil().init();
    }
}

