/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.persistance

class PlatformRecordIdUtil : JObjectBase
{
    string PLATFORM_SHORT_NAME;

    // Java field initializers run after the super constructor
    void jfields_PlatformRecordIdUtil()
    {
    this.PLATFORM_SHORT_NAME = "JSE";
    }

    PlatformRecordIdUtil@ jinit_PlatformRecordIdUtil()
    {
        this.jfields_PlatformRecordIdUtil();
        return this;
    }
    

    string getRecordId(AbeClientInformationInterface@ abeClientInformation, string baseRecordId)
    {
        return StringMaker().jinit_StringMaker().append(abeClientInformation.toShortString()).append(CommonSeps::getInstance().UNDERSCORE).append(this.PLATFORM_SHORT_NAME).append(baseRecordId).toString();
    }
}

namespace PlatformRecordIdUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PlatformRecordIdUtil().jinit_PlatformRecordIdUtil();
    }

    PlatformRecordIdUtil@ jcell_instance;
    PlatformRecordIdUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PlatformRecordIdUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    PlatformRecordIdUtil@ getInstance()
    {
        return PlatformRecordIdUtil::instance;
    }
}

