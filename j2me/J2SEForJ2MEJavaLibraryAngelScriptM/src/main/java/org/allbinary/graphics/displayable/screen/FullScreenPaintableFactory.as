/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

class FullScreenPaintableFactory : JObjectBase
{
    Paintable@ paintable;

    // Java field initializers run after the super constructor
    void jfields_FullScreenPaintableFactory()
    {
    @this.paintable = NullPaintable::getInstance();
    }

    FullScreenPaintableFactory@ jinit_FullScreenPaintableFactory()
    {
        this.jfields_FullScreenPaintableFactory();
        return this;
    }
}

namespace FullScreenPaintableFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FullScreenPaintableFactory().jinit_FullScreenPaintableFactory();
    }

    FullScreenPaintableFactory@ jcell_instance;
    FullScreenPaintableFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FullScreenPaintableFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    FullScreenPaintableFactory@ getInstance()
    {
        return FullScreenPaintableFactory::instance;
    }
}

