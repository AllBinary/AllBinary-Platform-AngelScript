// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

class ABStringComponent : JObjectBase
{
    

    BasicColor@ getBackgroundBasicColor()
    {
        return BasicColorFactory::getInstance().WHITE;
    }
    

    ABStringComponent@ jinit_ABStringComponent(BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        return this;
    }
    

    BasicColor@ getForegroundBasicColor()
    {
        return BasicColorFactory::getInstance().WHITE;
    }
    

    void setForegroundBasicColor(BasicColor@ foregroundBasicColor)
    {
    }
}

namespace ABStringComponent
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_STRING_COMPONENT = ABStringComponent().jinit_ABStringComponent(BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
    }

    ABStringComponent@ jcell_NULL_STRING_COMPONENT;
    ABStringComponent@ get_NULL_STRING_COMPONENT() property { jclinit(); return jcell_NULL_STRING_COMPONENT; }
    void set_NULL_STRING_COMPONENT(ABStringComponent@ value) property { jclinit(); @jcell_NULL_STRING_COMPONENT = value; }
}

