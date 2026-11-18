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
// package org.allbinary.graphics

class ScreenCaptureNoneFactory : JObjectBase
{

    ScreenCaptureNoneFactory@ jinit_ScreenCaptureNoneFactory()
    {
        return this;
    }
}

namespace ScreenCaptureNoneFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ScreenCapture().jinit_ScreenCapture();
    }

    ScreenCapture@ jcell_instance;
    ScreenCapture@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ScreenCapture@ value) property { jclinit(); @jcell_instance = value; }
    

    ScreenCapture@ getInstance()
    {
        return ScreenCaptureNoneFactory::instance;
    }
}

