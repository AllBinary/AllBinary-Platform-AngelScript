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
// package org.allbinary.graphics.font

class FontDebugFactory : JObjectBase
{

    FontDebugFactory@ jinit_FontDebugFactory()
    {
        return this;
    }
    

    void setFont(Font@ font, Graphics@ graphics)
    {
        graphics.setFont(font);
    }
}

namespace FontDebugFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FontDebugFactory().jinit_FontDebugFactory();
    }

    FontDebugFactory@ jcell_instance;
    FontDebugFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FontDebugFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    FontDebugFactory@ getInstance()
    {
        return FontDebugFactory::instance;
    }
}

