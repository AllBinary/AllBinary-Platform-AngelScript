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

class DamageUtil : JObjectBase
{
    LogUtil@ logUtil;
    string COLLIDE;

    // Java field initializers run after the super constructor
    void jfields_DamageUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    this.COLLIDE = "collide";
    }
    

    DamageUtil@ jinit_DamageUtil()
    {
        this.jfields_DamageUtil();
        return this;
    }
    

    void process(DamageableInterface@ damageableInterface, DamageableInterface@ damageableInterface2)
    {
        damageableInterface.damage(damageableInterface2.getDamage(0), 0);
    }
    

    void debugDamage(CollidableCompositeLayer@ collidableInterfaceCompositeInterface1, CollidableCompositeLayer@ collidableInterfaceCompositeInterface)
    {
        CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer = cast<CollidableDestroyableDamageableLayer>(collidableInterfaceCompositeInterface);
        int damage = collidableDestroyableDamageableLayer.getDamage(0);
        if (damage > 20000) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append("Collision ");
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString());
            stringBuffer.append(" with: ");
            stringBuffer.append(collidableInterfaceCompositeInterface.toString());
            stringBuffer.append(" damage: ");
            stringBuffer.appendint(damage);
            this.logUtil.putF(stringBuffer.toString(), collidableInterfaceCompositeInterface1, this.COLLIDE);
        }
    }
}

namespace DamageUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DamageUtil().jinit_DamageUtil();
    }

    DamageUtil@ jcell_instance;
    DamageUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DamageUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    DamageUtil@ getInstance()
    {
        return DamageUtil::instance;
    }
}

