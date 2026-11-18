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
// package org.allbinary.media.audio

class AllBinaryMediaManagerShutdown : JObjectBase
{

    AllBinaryMediaManagerShutdown@ jinit_AllBinaryMediaManagerShutdown()
    {
        return this;
    }
}

namespace AllBinaryMediaManagerShutdown
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AllBinaryMediaManagerShutdown().jinit_AllBinaryMediaManagerShutdown();
    }

    AllBinaryMediaManagerShutdown@ jcell_instance;
    AllBinaryMediaManagerShutdown@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AllBinaryMediaManagerShutdown@ value) property { jclinit(); @jcell_instance = value; }
    

    void shutdown(SoundsFactoryInterface@ soundsFactoryInterface)
    {
        LogUtil@ logUtil = LogUtil::getInstance();
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        logUtil.putF(commonStrings.START, AllBinaryMediaManagerShutdown::instance, "shutdown");
        AllBinaryMediaManager::shutdown(soundsFactoryInterface);
    }
}

