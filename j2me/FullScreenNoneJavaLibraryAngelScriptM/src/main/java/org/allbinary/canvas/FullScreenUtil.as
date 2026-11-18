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
// package org.allbinary.canvas

class FullScreenUtil : JObjectBase
{

    FullScreenUtil@ jinit_FullScreenUtil()
    {
        return this;
    }
    

    void initOnRun(Canvas@ fullScreenInterface, CommandListener@ commandListener)
    {
        if (commandListener !is null) {
            this.init(fullScreenInterface);
        }
    }
    

    void init(Canvas@ fullScreenInterface)
    {
    }
    

    bool isScreenChange(bool isFullScreen)
    {
        MainFeatureFactory@ mainFeatureFactory = MainFeatureFactory::getInstance();
        Features@ features = Features::getInstance();
        if (features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen) {
            return true;
        }
        return false;
    }
    

    bool isScreenChangeCanvas(Canvas@ fullScreenInterface)
    {
        return this.isScreenChange(false);
    }
}

namespace FullScreenUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FullScreenUtil().jinit_FullScreenUtil();
    }

    FullScreenUtil@ jcell_instance;
    FullScreenUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FullScreenUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    FullScreenUtil@ getInstance()
    {
        return FullScreenUtil::instance;
    }
}

