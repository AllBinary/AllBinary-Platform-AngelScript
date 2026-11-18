/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.health

class NullHealthListener : JObjectBase, HealthListenerInterface
{

    NullHealthListener@ jinit_NullHealthListener()
    {
        return this;
    }
    

    void onHealthChange()
    {
    }
}

namespace NullHealthListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_HEALTH_LISTENER = NullHealthListener().jinit_NullHealthListener();
    }

    NullHealthListener@ jcell_NULL_HEALTH_LISTENER;
    NullHealthListener@ get_NULL_HEALTH_LISTENER() property { jclinit(); return jcell_NULL_HEALTH_LISTENER; }
    void set_NULL_HEALTH_LISTENER(NullHealthListener@ value) property { jclinit(); @jcell_NULL_HEALTH_LISTENER = value; }
}

