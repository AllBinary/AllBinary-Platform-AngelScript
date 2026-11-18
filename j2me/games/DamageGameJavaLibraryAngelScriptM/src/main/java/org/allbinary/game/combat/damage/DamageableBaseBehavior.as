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

class DamageableBaseBehavior : JObjectBase, DamageableInterface
{

    DamageableBaseBehavior@ jinit_DamageableBaseBehavior()
    {
        return this;
    }
    

    string getName()
    {
        return jClassName(this);
    }
    

    void damage(int damage, int damageType)
    {
    }
    

    int getDamage(int damageType)
    {
        return 6000;
    }
}

namespace DamageableBaseBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DamageableBaseBehavior().jinit_DamageableBaseBehavior();
    }

    DamageableBaseBehavior@ jcell_instance;
    DamageableBaseBehavior@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DamageableBaseBehavior@ value) property { jclinit(); @jcell_instance = value; }
    

    DamageableBaseBehavior@ getInstance()
    {
        return DamageableBaseBehavior::instance;
    }
}

