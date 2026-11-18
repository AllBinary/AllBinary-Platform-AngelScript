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
// package org.allbinary.game.combat.damage

class ExplosionResources : JObjectBase
{
    string EXPLOSION_90_RESOURCE;
    string EXPLOSION_60_RESOURCE;
    string HALF_EXPLOSION_RESOURCE;
    string THIRD_EXPLOSION_RESOURCE;

    // Java field initializers run after the super constructor
    void jfields_ExplosionResources()
    {
    this.EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png";
    this.EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png";
    this.HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png";
    this.THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png";
    }
    

    ExplosionResources@ jinit_ExplosionResources()
    {
        this.jfields_ExplosionResources();
        return this;
    }
}

namespace ExplosionResources
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ExplosionResources().jinit_ExplosionResources();
    }

    ExplosionResources@ jcell_instance;
    ExplosionResources@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ExplosionResources@ value) property { jclinit(); @jcell_instance = value; }
    

    ExplosionResources@ getInstance()
    {
        return ExplosionResources::instance;
    }
}

