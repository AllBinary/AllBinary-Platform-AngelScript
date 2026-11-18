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
// package org.allbinary.media.audio

class SecondaryPlayerQueueFactory : JObjectBase
{

    SecondaryPlayerQueueFactory@ jinit_SecondaryPlayerQueueFactory()
    {
        return this;
    }
}

namespace SecondaryPlayerQueueFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = PlayerQueue().jinit_PlayerQueue(4);
    }

    PlayerQueue@ jcell_SINGLETON;
    PlayerQueue@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(PlayerQueue@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    PlayerQueue@ getInstance()
    {
        return SecondaryPlayerQueueFactory::SINGLETON;
    }
}

