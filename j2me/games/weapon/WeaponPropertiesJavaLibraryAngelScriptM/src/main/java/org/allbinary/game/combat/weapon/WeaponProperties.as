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

class WeaponProperties : SimpleWeaponProperties
{
    int64 reloadTime_WeaponProperties;
    int64 targetingTime_WeaponProperties;
    BasicDecimal@ speed_WeaponProperties;
    int64 MAX_WeaponProperties;
    int16 ZERO_WeaponProperties;

    // Java field initializers run after the super constructor
    void jfields_WeaponProperties()
    {
    
    
    @this.speed_WeaponProperties = BasicDecimal::ZERO_BIGDECIMAL;
    this.MAX_WeaponProperties = int64(10240);
    this.ZERO_WeaponProperties = 0;
    }
    

    WeaponProperties@ jinit_WeaponProperties(int64 reloadTime, int64 targetingTime, int64 speed, int damage, int16 dissipation)
    {
        this.jinit_SimpleWeaponProperties();
        this.jfields_WeaponProperties();
        if (speed < this.MAX_WeaponProperties && speed != int64(0) && !WeaponProperties::messageSent) {
            string MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ";
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            PreLogUtil::put(StringMaker().jinit_StringMaker().append(MESSAGE).appendlong(speed).toString(), this, commonStrings.CONSTRUCTOR);
            WeaponProperties::messageSent = true;
        }
        this.setReloadTime(reloadTime);
        this.setTargetingTime(targetingTime);
        this.setDamage(damage);
        this.setDissipation(dissipation);
        this.setSpeed(BasicDecimal().jinit_BasicDecimal(speed));
        if (dissipation != this.ZERO_WeaponProperties) {
            int64 unscaledDamage = this.speed_WeaponProperties.getUnscaled() * int64(damage);
            int scaledDissipation = int(dissipation) * this.speed_WeaponProperties.getScaledFactorValue();
            int64 value = (unscaledDamage / int64(scaledDissipation));
            this.setRange(int((value * 9)) / 10);
        }
        return this;
    }
    

    void setReloadTime(int64 reloadTime)
    {
        this.reloadTime_WeaponProperties = reloadTime;
    }
    

    int64 getReloadTime()
    {
        return this.reloadTime_WeaponProperties;
    }
    

    void setTargetingTime(int64 targetingTime)
    {
        this.targetingTime_WeaponProperties = targetingTime;
    }
    

    int64 getTargetingTime()
    {
        return this.targetingTime_WeaponProperties;
    }
    

    BasicDecimal@ getSpeed()
    {
        return this.speed_WeaponProperties;
    }
    

    void setSpeed(BasicDecimal@ speed)
    {
        @this.speed_WeaponProperties = speed;
    }
    

    int getDamageI(int range)
    {
        return this.getDamage() - ((int(this.getDissipation()) * range) / this.speed_WeaponProperties.getScaled());
    }
    

    string[]@ toStringArray()
    {
        int index = 0;
        string[]@ stringArray = array<string>(3);
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringArray[index++] = stringBuffer.append(WeaponProperties::DAMAGE).appendint(this.getDamage()).toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties::RANGE).appendint(this.getRange()).toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties::RELOAD).appendlong(this.getReloadTime()).toString();
        return stringArray;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(WeaponProperties::DAMAGE).appendint(this.getDamage());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(WeaponProperties::RANGE).appendint(this.getRange());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(WeaponProperties::RELOAD).appendlong(this.getReloadTime());
        return stringBuffer.toString();
    }
}

namespace WeaponProperties
{
    const string DAMAGE = "Damage: ";
    const string RANGE = "Range: ";
    const string RELOAD = "Reload: ";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_WEAPON_PROPERTIES = WeaponProperties().jinit_WeaponProperties(int64(0), int64(0), int64(0), 0, int16(0));
        jcell_messageSent = false;
        
        
        
    }

    WeaponProperties@ jcell_NULL_WEAPON_PROPERTIES;
    WeaponProperties@ get_NULL_WEAPON_PROPERTIES() property { jclinit(); return jcell_NULL_WEAPON_PROPERTIES; }
    void set_NULL_WEAPON_PROPERTIES(WeaponProperties@ value) property { jclinit(); @jcell_NULL_WEAPON_PROPERTIES = value; }

    bool jcell_messageSent;
    bool get_messageSent() property { jclinit(); return jcell_messageSent; }
    void set_messageSent(bool value) property { jclinit(); jcell_messageSent = value; }
}

