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
    int damage_SimpleWeaponProperties;
    int16 dissipation_SimpleWeaponProperties;
    int range_SimpleWeaponProperties;

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
        this.damage_SimpleWeaponProperties = damage;
    }
    

    int getDamage()
    {
        return this.damage_SimpleWeaponProperties;
    }
    

    void setDissipation(int16 dissipation)
    {
        this.dissipation_SimpleWeaponProperties = dissipation;
    }
    

    int16 getDissipation()
    {
        return this.dissipation_SimpleWeaponProperties;
    }
    

    int getRange()
    {
        return this.range_SimpleWeaponProperties;
    }
    

    void setRange(int range)
    {
        this.range_SimpleWeaponProperties = range;
    }
}

