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
// package org.allbinary.game.configuration

class GameConfigurationCentral : JObjectBase
{
    LogUtil@ logUtil;
    GameConfiguration@ SCALE;
    GameConfiguration@ ORIENTATION;
    GameConfiguration@ SENSOR_UPDATE_RATE;
    GameConfiguration@ VIBRATION;
    GameConfiguration@ CHALLENGE_LEVEL;
    GameConfiguration@ COLLIDE_DAMAGE;
    GameConfiguration@ DURABILITY_CHALLENGE_LEVEL;
    GameConfiguration@ SPEED_CHALLENGE_LEVEL;
    GameConfiguration@ ATTACK_CHALLENGE_LEVEL;
    GameConfiguration@ CONTROL_LEVEL;
    GameConfiguration@ PLAYER_INPUT_WAIT;
    GameConfiguration@ SPEED;
    GameConfiguration@ SOUND_VOLUME;
    GameConfiguration@ MAX_GAME_OBJECTS;
    GameConfiguration@ MAX_LAYERS;
    int gameControlFidelity_GameConfigurationCentral;

    // Java field initializers run after the super constructor
    void jfields_GameConfigurationCentral()
    {
    @this.logUtil = LogUtil::getInstance();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.gameControlFidelity_GameConfigurationCentral = 36;
    }
    

    GameConfigurationCentral@ jinit_GameConfigurationCentral()
    {
        this.jfields_GameConfigurationCentral();
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        @this.SCALE = GameConfiguration().jinit_GameConfiguration("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3));
        @this.ORIENTATION = GameConfiguration().jinit_GameConfiguration("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8));
        @this.SENSOR_UPDATE_RATE = GameConfiguration().jinit_GameConfiguration("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        @this.VIBRATION = GameConfiguration().jinit_GameConfiguration("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        @this.CHALLENGE_LEVEL = GameConfiguration().jinit_GameConfiguration("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.COLLIDE_DAMAGE = GameConfiguration().jinit_GameConfiguration("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.DURABILITY_CHALLENGE_LEVEL = GameConfiguration().jinit_GameConfiguration("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.SPEED_CHALLENGE_LEVEL = GameConfiguration().jinit_GameConfiguration("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.ATTACK_CHALLENGE_LEVEL = GameConfiguration().jinit_GameConfiguration("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.CONTROL_LEVEL = GameConfiguration().jinit_GameConfiguration("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.PLAYER_INPUT_WAIT = GameConfiguration().jinit_GameConfiguration("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.SPEED = GameConfiguration().jinit_GameConfiguration("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        @this.SOUND_VOLUME = GameConfiguration().jinit_GameConfiguration("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10));
        @this.MAX_GAME_OBJECTS = GameConfiguration().jinit_GameConfiguration("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
        @this.MAX_LAYERS = GameConfiguration().jinit_GameConfiguration("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
        return this;
    }
    

    void load(AbeClientInformationInterface@ abeClientInformation)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        try {
            SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
            KeyValuePersistance@ keyValuePersistance = GameConfigurationPersistanceSingleton::getInstance();
            keyValuePersistance.clear();
            keyValuePersistance.loadAll(abeClientInformation);
            BasicArrayList@ list = keyValuePersistance.getIds();
            if (list.size() > 0) {
                ABHashtable@ hashtable = keyValuePersistance.get(0);
                JObject@ anyType = jbox(this.SCALE.getName());
                string value = jstringOf(hashtable.get(anyType));
                this.SCALE.setValue(smallIntegerSingletonFactory.getAt(Integer::valueOf(value).intValue()));
            } else {
                this.logUtil.putF("No Game Configuration To Load", this, commonStrings.LOAD);
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.LOAD, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    void setGameControlFidelity(int gameControlFidelity)
    {
        this.gameControlFidelity_GameConfigurationCentral = gameControlFidelity;
    }
    

    int getGameControlFidelity()
    {
        return this.gameControlFidelity_GameConfigurationCentral;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        CommonSeps@ commonStrings = CommonSeps::getInstance();
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SCALE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.SCALE.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ORIENTATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.ORIENTATION.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SENSOR_UPDATE_RATE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.SENSOR_UPDATE_RATE.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.VIBRATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.VIBRATION.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.CHALLENGE_LEVEL.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.COLLIDE_DAMAGE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.COLLIDE_DAMAGE.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.DURABILITY_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.DURABILITY_CHALLENGE_LEVEL.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.SPEED_CHALLENGE_LEVEL.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ATTACK_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.ATTACK_CHALLENGE_LEVEL.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CONTROL_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.CONTROL_LEVEL.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.SPEED.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_GAME_OBJECTS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.MAX_GAME_OBJECTS.getValue().intValue()));
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_LAYERS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint(int(this.MAX_LAYERS.getValue().intValue()));
        return stringBuffer.toString();
    }
}

namespace GameConfigurationCentral
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = NullUtil::getInstance().NULL_OBJECT;
    }

    JObject@ jcell_SINGLETON;
    JObject@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(JObject@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    GameConfigurationCentral@ getInstance()
    {
        if (GameConfigurationCentral::SINGLETON is NullUtil::getInstance().NULL_OBJECT) {
            @GameConfigurationCentral::SINGLETON = GameConfigurationCentral().jinit_GameConfigurationCentral();
        }
        return cast<GameConfigurationCentral>(GameConfigurationCentral::SINGLETON);
    }
}

