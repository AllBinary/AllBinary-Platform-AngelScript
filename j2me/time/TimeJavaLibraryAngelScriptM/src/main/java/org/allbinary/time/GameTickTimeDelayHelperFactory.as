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

class GameTickTimeDelayHelperFactory : JObjectBase
{
    

    GameTickTimeDelayHelperFactory@ jinit_GameTickTimeDelayHelperFactory()
    {
        return this;
    }
}

namespace GameTickTimeDelayHelperFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameTickTimeDelayHelper().jinit_GameTickTimeDelayHelper(-1);
    }

    GameTickTimeDelayHelper@ jcell_instance;
    GameTickTimeDelayHelper@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameTickTimeDelayHelper@ value) property { jclinit(); @jcell_instance = value; }
    

    GameTickTimeDelayHelper@ getInstance()
    {
        return GameTickTimeDelayHelperFactory::instance;
    }
}

