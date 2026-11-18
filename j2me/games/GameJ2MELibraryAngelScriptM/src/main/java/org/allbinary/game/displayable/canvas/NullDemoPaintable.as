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
// package org.allbinary.game.displayable.canvas

class NullDemoPaintable : JObjectBase, DemoPaintableInterface
{

    NullDemoPaintable@ jinit_NullDemoPaintable()
    {
        return this;
    }
    

    void showGamePaintable()
    {
    }
}

namespace NullDemoPaintable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_DEMO_PAINTABLE = NullDemoPaintable().jinit_NullDemoPaintable();
    }

    NullDemoPaintable@ jcell_NULL_DEMO_PAINTABLE;
    NullDemoPaintable@ get_NULL_DEMO_PAINTABLE() property { jclinit(); return jcell_NULL_DEMO_PAINTABLE; }
    void set_NULL_DEMO_PAINTABLE(NullDemoPaintable@ value) property { jclinit(); @jcell_NULL_DEMO_PAINTABLE = value; }
}

