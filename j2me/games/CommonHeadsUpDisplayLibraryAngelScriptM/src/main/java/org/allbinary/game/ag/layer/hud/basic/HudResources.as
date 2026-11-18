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
// package org.allbinary.game.ag.layer.hud.basic

class HudResources : JObjectBase
{
    string RESOURCE_LIFE;
    string RESOURCE_HEALTH;

    // Java field initializers run after the super constructor
    void jfields_HudResources()
    {
    this.RESOURCE_LIFE = "/hud_life_10_by_10.png";
    this.RESOURCE_HEALTH = "/hud_health_10_by_10.png";
    }
    

    HudResources@ jinit_HudResources()
    {
        this.jfields_HudResources();
        return this;
    }
}

namespace HudResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = HudResources().jinit_HudResources();
    }

    HudResources@ jcell_instance;
    HudResources@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(HudResources@ value) property { jclinit(); @jcell_instance = value; }
    

    HudResources@ getInstance()
    {
        return HudResources::instance;
    }
}

