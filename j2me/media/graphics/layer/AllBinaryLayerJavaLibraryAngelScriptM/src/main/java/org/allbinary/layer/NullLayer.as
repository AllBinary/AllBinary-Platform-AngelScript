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
// package org.allbinary.layer

class NullLayer : ABLayer
{
    

    NullLayer@ jinit_NullLayer()
    {
        this.jinit_ABLayer(0, 0);
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
    }
}

namespace NullLayer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullLayer().jinit_NullLayer();
    }

    NullLayer@ jcell_instance;
    NullLayer@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(NullLayer@ value) property { jclinit(); @jcell_instance = value; }
    

    NullLayer@ getInstance()
    {
        return NullLayer::instance;
    }
}

