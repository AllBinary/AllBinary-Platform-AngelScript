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

class DamageFloaters : Paintable
{

    DamageFloaters@ jinit_DamageFloaters()
    {
        this.jinit_Paintable();
        return this;
    }
    

    void add(int damage)
    {
    }
}

namespace DamageFloaters
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = DamageFloaters().jinit_DamageFloaters();
    }

    DamageFloaters@ jcell_SINGLETON;
    DamageFloaters@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(DamageFloaters@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    DamageFloaters@ getInstance()
    {
        return DamageFloaters::SINGLETON;
    }
}

