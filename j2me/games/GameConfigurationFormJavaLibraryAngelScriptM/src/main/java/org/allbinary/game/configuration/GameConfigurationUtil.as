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

class GameConfigurationUtil : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    string GAUGE_UPDATE;
    string FROM;
    string TO;
    int COMPETITION_VALUE;

    // Java field initializers run after the super constructor
    void jfields_GameConfigurationUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    this.GAUGE_UPDATE = "Gauge Update: ";
    this.FROM = " from: ";
    this.TO = " to: ";
    this.COMPETITION_VALUE = 1;
    }

    GameConfigurationUtil@ jinit_GameConfigurationUtil()
    {
        this.jfields_GameConfigurationUtil();
        return this;
    }
    

    void change(GameOptionsForm@ gameOptionsForm, GameConfigurationGauge@ gauge)
    {
        this.update(gauge);
        GameConfigurationSingleton@ gameConfigurationSingleton = GameConfigurationSingleton::getInstance();
        GameConfiguration@ gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        this.updateChallange(gameOptionsForm, gameConfiguration);
    }
    

    void update(GameConfigurationGauge@ gauge)
    {
        GameConfigurationSingleton@ gameConfigurationSingleton = GameConfigurationSingleton::getInstance();
        GameConfiguration@ gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        JInteger@ value = smallIntegerSingletonFactory.getAt(gauge.getValue() + gameConfiguration.getMinValue().intValue());
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.GAUGE_UPDATE);
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.FROM);
        stringBuffer.appendint(int(gameConfiguration.getValue().intValue()));
        stringBuffer.append(this.TO);
        stringBuffer.appendint(int(value.intValue()));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.UPDATE);
        gameConfiguration.setValue(value);
    }
    

    void setDefault(GameConfigurationGauge@ gauge)
    {
        GameConfigurationSingleton@ gameConfigurationSingleton = GameConfigurationSingleton::getInstance();
        GameConfiguration@ gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Gauge Default: ");
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.TO);
        stringBuffer.appendint(int(gameConfiguration.getDefaultValue().intValue()));
        this.logUtil.putF(stringBuffer.toString(), this, "setDefault");
        gauge.setValue(gameConfiguration.getDefaultValue().intValue() - gameConfiguration.getMinValue().intValue());
        gameConfiguration.setValue(gameConfiguration.getDefaultValue());
    }
    

    void updateChallange(GameOptionsForm@ gameOptionsForm, GameConfiguration@ gameConfiguration)
    {
        GameConfigurationSingleton@ gameConfigurationSingleton = GameConfigurationSingleton::getInstance();
        GameConfigurationCentral@ gameConfigurationCentral = GameConfigurationCentral::getInstance();
        if (gameConfiguration is gameConfigurationCentral.CHALLENGE_LEVEL) {
            this.logUtil.putF(this.commonStrings.START, this, "updateChallange");
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            int size = gameOptionsForm.size();
            for (int index = 0; index < size; index++) {
                Item@ item = gameOptionsForm.get(index);
                if ((cast<GameConfigurationGauge>(item) !is null)) {
                    GameConfigurationGauge@ gauge = cast<GameConfigurationGauge>(item);
                    string name = item.getLabel();
                    GameConfiguration@ nextGameConfiguration = gameConfigurationSingleton.getInstanceByName(name);
                    if (nextGameConfiguration is gameConfigurationCentral.COLLIDE_DAMAGE) {
                        gauge.setValue(gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration is gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration is gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    } else if (nextGameConfiguration is gameConfigurationCentral.SPEED_CHALLENGE_LEVEL) {
                        gauge.setValue(gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue());
                    }
                }
            }
        }
    }
    

    void updateCompetitionValue()
    {
        this.logUtil.putF(this.commonStrings.START, this, "updateCompetitionValue");
        GameConfigurationCentral@ gameConfigurationCentral = GameConfigurationCentral::getInstance();
        this.COMPETITION_VALUE = gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() + gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() + gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue();
        this.COMPETITION_VALUE = (this.COMPETITION_VALUE >>> 2);
    }
    

    int getCompetitionValue()
    {
        return this.COMPETITION_VALUE;
    }
}

namespace GameConfigurationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameConfigurationUtil().jinit_GameConfigurationUtil();
    }

    GameConfigurationUtil@ jcell_instance;
    GameConfigurationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameConfigurationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    GameConfigurationUtil@ getInstance()
    {
        return GameConfigurationUtil::instance;
    }
}

