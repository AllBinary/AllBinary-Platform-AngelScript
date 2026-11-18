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
// package org.allbinary.graphics.paint

class StatePaintableFactory : JObjectBase
{

    StatePaintableFactory@ jinit_StatePaintableFactory()
    {
        return this;
    }
}

namespace StatePaintableFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = StatePaintable().jinit_StatePaintable();
    }

    StatePaintable@ jcell_instance;
    StatePaintable@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(StatePaintable@ value) property { jclinit(); @jcell_instance = value; }
    

    StatePaintable@ getInstance()
    {
        return StatePaintableFactory::instance;
    }
}

