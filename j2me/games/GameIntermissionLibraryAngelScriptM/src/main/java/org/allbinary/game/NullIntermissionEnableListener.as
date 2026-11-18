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
// package org.allbinary.game

class NullIntermissionEnableListener : JObjectBase, IntermissionEnableListenerInterface
{
    

    NullIntermissionEnableListener@ jinit_NullIntermissionEnableListener()
    {
        return this;
    }
    

    void notifyIntermission(bool enable)
    {
    }
}

namespace NullIntermissionEnableListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NullIntermissionEnableListener().jinit_NullIntermissionEnableListener();
    }

    IntermissionEnableListenerInterface@ jcell_SINGLETON;
    IntermissionEnableListenerInterface@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(IntermissionEnableListenerInterface@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    IntermissionEnableListenerInterface@ getInstance()
    {
        return NullIntermissionEnableListener::SINGLETON;
    }
}

