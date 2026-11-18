// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

//J2MEForJ2ME
class NullDisplayable : Canvas
{
    BaseGameStatistics@ baseGameStatistics_NullDisplayable;

    // Java field initializers run after the super constructor
    void jfields_NullDisplayable()
    {
    @this.baseGameStatistics_NullDisplayable = GameStatisticsFactory::getInstance();
    }
    

    NullDisplayable@ jinit_NullDisplayable()
    {
        this.jinit_Canvas();
        this.jfields_NullDisplayable();
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.baseGameStatistics_NullDisplayable.nextRefresh();
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

