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
// package org.allbinary.game.score

class NoScoreable : Scoreable
{
    

    NoScoreable@ jinit_NoScoreable()
    {
        this.jinit_Scoreable(0);
        return this;
    }
    

    void addPoints(int points)
    {
    }
    

    void removePoints(int points)
    {
    }
}

namespace NoScoreable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NoScoreable().jinit_NoScoreable();
    }

    NoScoreable@ jcell_SINGLETON;
    NoScoreable@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(NoScoreable@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    NoScoreable@ getInstance()
    {
        return NoScoreable::SINGLETON;
    }
}

