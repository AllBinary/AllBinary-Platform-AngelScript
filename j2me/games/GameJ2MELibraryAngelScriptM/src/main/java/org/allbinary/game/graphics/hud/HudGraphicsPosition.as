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
// package org.allbinary.game.graphics.hud

class HudGraphicsPosition : JObjectBase
{
    int anchor;
    GPoint@ point;

    // Java field initializers run after the super constructor
    void jfields_HudGraphicsPosition()
    {
    
    @this.point = PointFactory::getInstance().ZERO_ZERO;
    }
    

    HudGraphicsPosition@ jinit_HudGraphicsPosition(GPoint@ point, int anchor)
    {
        this.jfields_HudGraphicsPosition();
        this.setAnchor(anchor);
        this.setPoint(point);
        return this;
    }
    

    int getAnchor()
    {
        return this.anchor;
    }
    

    void setAnchor(int anchor)
    {
        this.anchor = anchor;
    }
    

    GPoint@ getPoint()
    {
        return this.point;
    }
    

    void setPoint(GPoint@ point)
    {
        @this.point = point;
    }
}

namespace HudGraphicsPosition
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_HUD_GRAPHICS_POSITION = HudGraphicsPosition().jinit_HudGraphicsPosition(PointFactory::getInstance().ZERO_ZERO, 9);
    }

    HudGraphicsPosition@ jcell_NULL_HUD_GRAPHICS_POSITION;
    HudGraphicsPosition@ get_NULL_HUD_GRAPHICS_POSITION() property { jclinit(); return jcell_NULL_HUD_GRAPHICS_POSITION; }
    void set_NULL_HUD_GRAPHICS_POSITION(HudGraphicsPosition@ value) property { jclinit(); @jcell_NULL_HUD_GRAPHICS_POSITION = value; }
}

