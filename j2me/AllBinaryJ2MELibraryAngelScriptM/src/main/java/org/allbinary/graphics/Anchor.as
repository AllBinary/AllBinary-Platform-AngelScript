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
// package org.allbinary.graphics

class Anchor : JObjectBase
{

    Anchor@ jinit_Anchor()
    {
        return this;
    }
}

namespace Anchor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_TOP_LEFT = Graphics::TOP & Graphics::LEFT;
    }

    int jcell_TOP_LEFT;
    int get_TOP_LEFT() property { jclinit(); return jcell_TOP_LEFT; }
    void set_TOP_LEFT(int value) property { jclinit(); jcell_TOP_LEFT = value; }
    int jpostAdd_TOP_LEFT(int delta) { jclinit(); int old = jcell_TOP_LEFT; jcell_TOP_LEFT = int(old + delta); return old; }
}

