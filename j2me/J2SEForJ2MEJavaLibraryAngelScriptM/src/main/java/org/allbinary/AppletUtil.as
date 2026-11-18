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
// package org.allbinary

//import org.allbinary.logic.communication.log.PreLogUtil;
class AppletUtil : JObjectBase
{
    

    AppletUtil@ jinit_AppletUtil()
    {
        return this;
    }
}

namespace AppletUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_applet = false;
    }

    bool jcell_applet;
    bool get_applet() property { jclinit(); return jcell_applet; }
    void set_applet(bool value) property { jclinit(); jcell_applet = value; }
    

    void setApplet()
    {
        AppletUtil::applet = true;
    }
    

    bool isAppletLoader(JObject@ anyType)
    {
        return AppletUtil::applet;
    }
}

