// Generated Code Do Not Modify
// package org.allbinary.graphics.font

//OpenGLNoneOther2JavaLibrary
class FontDebugBase : JObjectBase
{
    string SET_FONT;

    // Java field initializers run after the super constructor
    void jfields_FontDebugBase()
    {
    this.SET_FONT = "setFont";
    }

    FontDebugBase@ jinit_FontDebugBase()
    {
        this.jfields_FontDebugBase();
        return this;
    }
    

    void debugMetrics(Font@ currentFont, float convertedTextSize, JObject@ displayMetrics, StringMaker@ stringBuffer)
    {
    }
    

    void debugDpi(int densityDpi, StringMaker@ stringBuffer)
    {
    }
    

    void debugDimension(Font@ currentFont, float convertedTextSize, int longestDimensionTotalPixels, StringMaker@ stringBuffer)
    {
    }
}

namespace FontDebugBase
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceBase = FontDebugBase().jinit_FontDebugBase();
    }

    FontDebugBase@ jcell_instanceBase;
    FontDebugBase@ get_instanceBase() property { jclinit(); return jcell_instanceBase; }
    void set_instanceBase(FontDebugBase@ value) property { jclinit(); @jcell_instanceBase = value; }
    

    FontDebugBase@ getInstance()
    {
        return FontDebugBase::instanceBase;
    }
}

