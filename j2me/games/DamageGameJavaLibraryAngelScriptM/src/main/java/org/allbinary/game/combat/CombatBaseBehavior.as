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
// package org.allbinary.game.combat

class CombatBaseBehavior : JObjectBase
{
    DamageableBaseBehavior@ damageableBaseBehavior;
    DestroyableBaseBehavior@ destroyableBaseBehavior;
    bool readyForExplosion;
    

    CombatBaseBehavior@ jinit_CombatBaseBehavior(DamageableBaseBehavior@ damageableBaseBehavior, DestroyableBaseBehavior@ destroyableBaseBehavior)
    {
        @this.damageableBaseBehavior = damageableBaseBehavior;
        @this.destroyableBaseBehavior = destroyableBaseBehavior;
        return this;
    }
    

    DamageableBaseBehavior@ getDamageableBaseBehavior()
    {
        return this.damageableBaseBehavior;
    }
    

    DestroyableBaseBehavior@ getDestroyableBaseBehavior()
    {
        return this.destroyableBaseBehavior;
    }
    

    bool isReadyForExplosion()
    {
        return this.readyForExplosion;
    }
    

    void setReadyForExplosion(bool readyForExplosion)
    {
        this.readyForExplosion = readyForExplosion;
    }
}

namespace CombatBaseBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_COMBAT_BEHAVIOR = CombatBaseBehavior().jinit_CombatBaseBehavior(DamageableBaseBehavior::getInstance(), DestroyableBaseBehavior::getInstance());
    }

    CombatBaseBehavior@ jcell_NULL_COMBAT_BEHAVIOR;
    CombatBaseBehavior@ get_NULL_COMBAT_BEHAVIOR() property { jclinit(); return jcell_NULL_COMBAT_BEHAVIOR; }
    void set_NULL_COMBAT_BEHAVIOR(CombatBaseBehavior@ value) property { jclinit(); @jcell_NULL_COMBAT_BEHAVIOR = value; }
}

