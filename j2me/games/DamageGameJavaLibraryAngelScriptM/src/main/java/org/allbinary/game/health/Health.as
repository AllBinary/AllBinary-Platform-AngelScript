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
// package org.allbinary.game.health

class Health : JObjectBase, HealthInterface
{
    int health;
    int maxHealth;
    HealthListenerInterface@ healthListenerInterface;

    // Java field initializers run after the super constructor
    void jfields_Health()
    {
    
    
    @this.healthListenerInterface = NullHealthListener::NULL_HEALTH_LISTENER;
    }
    

    Health@ jinit_Health(int maxHealth)
    {
        this.jfields_Health();
        this.setMaxHealth(maxHealth);
        this.setHealth(maxHealth);
        return this;
    }
    

    void heal(int ahealth)
    {
        int newHealth = this.getHealth() + ahealth;
        if (newHealth > this.getMaxHealth()) {
            this.setHealth(this.getMaxHealth());
        } else {
            this.setHealth(newHealth);
        }
    }
    

    void healMax()
    {
        this.setHealth(this.getMaxHealth());
    }
    

    bool isDamaged()
    {
        if (this.getHealth() != this.getMaxHealth()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    void damage(int ahealth)
    {
        if (ahealth < 0) {
            StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
            stringBuffer.append("******* Trying to heal when damaging. Damage: ");
            stringBuffer.appendint(ahealth);
            stringBuffer.append(CommonSeps::getInstance().SPACE);
            stringBuffer.append(this.toString());
            ForcedLogUtil::log(stringBuffer.toString(), this);
            return;
        }
        int health = this.getHealth() - ahealth;
        this.setHealth(health);
    }
    

    bool isAlive()
    {
        if (this.getHealth() <= 0) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    int getMaxHealth()
    {
        return this.maxHealth;
    }
    

    void setMaxHealth(int maxHealth)
    {
        this.maxHealth = maxHealth;
    }
    

    void setHealth(int health)
    {
        if (health > this.getMaxHealth()) {
            this.health = this.getMaxHealth();
        } else if (health < 0) {
            this.health = 0;
        } else {
            this.health = health;
        }
        if (this.healthListenerInterface !is null) {
            this.healthListenerInterface.onHealthChange();
        }
    }
    

    int getHealth()
    {
        return this.health;
    }
    

    void addListener(HealthListenerInterface@ healthGraphic)
    {
        @this.healthListenerInterface = healthGraphic;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(Health::HEALTH_LABEL);
        stringBuffer.appendint(this.health);
        stringBuffer.append(Health::MAX_HEALTH_LABEL);
        stringBuffer.appendint(this.maxHealth);
        return stringBuffer.toString();
    }
}

namespace Health
{
    const string NAME = "Health Resource";
    const string HEALTH_LABEL = "Health: ";
    const string MAX_HEALTH_LABEL = " Max: ";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_HEALTH = Health().jinit_Health(0);
        
        
        
    }

    Health@ jcell_NULL_HEALTH;
    Health@ get_NULL_HEALTH() property { jclinit(); return jcell_NULL_HEALTH; }
    void set_NULL_HEALTH(Health@ value) property { jclinit(); @jcell_NULL_HEALTH = value; }
}

