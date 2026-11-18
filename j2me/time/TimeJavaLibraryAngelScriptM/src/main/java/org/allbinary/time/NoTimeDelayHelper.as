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
// package org.allbinary.time

class NoTimeDelayHelper : TimeDelayHelper
{
    

    NoTimeDelayHelper@ jinit_NoTimeDelayHelper()
    {
        this.jinit_TimeDelayHelper(0);
        return this;
    }
    

    bool isTimeTNT()
    {
        return true;
    }
    

    bool isTimeSinceTNT(int delay)
    {
        return true;
    }
    

    bool isTime(int64 currentTime)
    {
        return true;
    }
    

    bool isTimeSince(int delay, int64 currentTime)
    {
        return true;
    }
}

namespace NoTimeDelayHelper
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NoTimeDelayHelper().jinit_NoTimeDelayHelper();
    }

    NoTimeDelayHelper@ jcell_SINGLETON;
    NoTimeDelayHelper@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NoTimeDelayHelper@ value) property { jclinit(); @jcell_SINGLETON = value; }
}

