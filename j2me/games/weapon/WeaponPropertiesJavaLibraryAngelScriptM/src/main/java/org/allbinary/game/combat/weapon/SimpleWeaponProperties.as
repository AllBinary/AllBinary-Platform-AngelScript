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
// package org.allbinary.game.combat.weapon

class SimpleWeaponProperties : JObjectBase
{
    int damage;
    int16 dissipation;
    int range;

    SimpleWeaponProperties@ jinit_SimpleWeaponProperties()
    {
        return this;
    }
    

    void set(SimpleWeaponProperties@ simpleWeaponProperties)
    {
        this.setDamage(simpleWeaponProperties.getDamage());
        this.setDissipation(simpleWeaponProperties.getDissipation());
        this.setRange(simpleWeaponProperties.getRange());
    }
    

    void setDamage(int damage)
    {
        this.damage = damage;
    }
    

    int getDamage()
    {
        return this.damage;
    }
    

    void setDissipation(int16 dissipation)
    {
        this.dissipation = dissipation;
    }
    

    int16 getDissipation()
    {
        return this.dissipation;
    }
    

    int getRange()
    {
        return this.range;
    }
    

    void setRange(int range)
    {
        this.range = range;
    }
}

