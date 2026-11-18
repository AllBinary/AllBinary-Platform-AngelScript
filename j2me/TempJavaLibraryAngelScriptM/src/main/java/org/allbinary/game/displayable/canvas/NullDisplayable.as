// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

//Temp should not be in any build
class NullDisplayable : Canvas
{
    

    NullDisplayable@ jinit_NullDisplayable()
    {
        this.jinit_Canvas();
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
    }
}

namespace NullDisplayable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NullDisplayable().jinit_NullDisplayable();
    }

    NullDisplayable@ jcell_SINGLETON;
    NullDisplayable@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NullDisplayable@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    NullDisplayable@ getInstance()
    {
        return NullDisplayable::SINGLETON;
    }
}

