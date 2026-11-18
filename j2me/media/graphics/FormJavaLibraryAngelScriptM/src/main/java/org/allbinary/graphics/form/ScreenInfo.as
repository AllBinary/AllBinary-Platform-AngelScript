// Generated Code Do Not Modify
// package org.allbinary.graphics.form

class ScreenInfo : JObjectBase
{
    int SMALL_WIDTH;
    int SMALL_HEIGHT;
    int MEDIUM_WIDTH;
    int MEDIUM_HEIGHT;

    // Java field initializers run after the super constructor
    void jfields_ScreenInfo()
    {
    this.SMALL_WIDTH = 320;
    this.SMALL_HEIGHT = 240;
    this.MEDIUM_WIDTH = 800;
    this.MEDIUM_HEIGHT = 600;
    }

    ScreenInfo@ jinit_ScreenInfo()
    {
        this.jfields_ScreenInfo();
        return this;
    }
}

namespace ScreenInfo
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ScreenInfo().jinit_ScreenInfo();
    }

    ScreenInfo@ jcell_instance;
    ScreenInfo@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ScreenInfo@ value) property { jclinit(); @jcell_instance = value; }
    

    ScreenInfo@ getInstance()
    {
        return ScreenInfo::instance;
    }
}

