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

class GameConfiguration : JObjectBase
{
    string name_GameConfiguration;
    JInteger@ defaultValue_GameConfiguration;
    JInteger@ value_GameConfiguration;
    JInteger@ minValue_GameConfiguration;
    JInteger@ maxValue_GameConfiguration;
    JBoolean@ modifiable_GameConfiguration;

    // Java field initializers run after the super constructor
    void jfields_GameConfiguration()
    {
    this.name_GameConfiguration = StringUtil::getInstance().EMPTY_STRING;
    @this.defaultValue_GameConfiguration = SmallIntegerSingletonFactory::getInstance().getAt(0);
    @this.value_GameConfiguration = GameConfiguration::MIN_VALUE;
    @this.minValue_GameConfiguration = this.defaultValue_GameConfiguration;
    @this.maxValue_GameConfiguration = this.defaultValue_GameConfiguration;
    @this.modifiable_GameConfiguration = BooleanFactory::getInstance().TRUE;
    }
    

    GameConfiguration@ jinit_GameConfiguration(string name, JInteger@ defaultValue, JInteger@ minValue, JInteger@ maxValue)
    {
        this.jfields_GameConfiguration();
        this.setName(name);
        this.setDefaultValue(defaultValue);
        @this.value_GameConfiguration = this.getDefaultValue();
        this.setMinValue(minValue);
        this.setMaxValue(maxValue);
        GameConfigurationSingleton::getInstance().getHashtable().put(this.getName(), this);
        return this;
    }
    

    void setValue(JInteger@ value)
    {
        if (this.value_GameConfiguration !is value) {
            JInteger@ oldValue = this.value_GameConfiguration;
            @this.value_GameConfiguration = value;
            GameFeatureEventHandler::getInstance().fireEvent(GameFeatureEvent().jinit_GameFeatureEvent(this, StringMaker().jinit_StringMaker().append(this.name_GameConfiguration).append(" value: from: ").appendint(int(oldValue.intValue())).append(" to ").appendint(int(this.value_GameConfiguration.intValue())).toString()));
        }
    }
    

    JInteger@ getValue()
    {
        return this.value_GameConfiguration;
    }
    

    void setMaxValue(JInteger@ maxValue)
    {
        @this.maxValue_GameConfiguration = maxValue;
    }
    

    JInteger@ getMaxValue()
    {
        return this.maxValue_GameConfiguration;
    }
    

    void setMinValue(JInteger@ minValue)
    {
        @this.minValue_GameConfiguration = minValue;
    }
    

    JInteger@ getMinValue()
    {
        return this.minValue_GameConfiguration;
    }
    

    void setName(string name)
    {
        this.name_GameConfiguration = name;
    }
    

    string getName()
    {
        return this.name_GameConfiguration;
    }
    

    void setDefaultValue(JInteger@ defaultValue)
    {
        @this.defaultValue_GameConfiguration = defaultValue;
    }
    

    JInteger@ getDefaultValue()
    {
        return this.defaultValue_GameConfiguration;
    }
    

    void setDefault()
    {
        this.setValue(this.getDefaultValue());
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.name_GameConfiguration);
        stringBuffer.append(" Min: ");
        stringBuffer.appendint(int(this.getMinValue().intValue()));
        stringBuffer.append(" Max: ");
        stringBuffer.appendint(int(this.getMaxValue().intValue()));
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(int(this.getValue().intValue()));
        stringBuffer.append(" Default: ");
        stringBuffer.appendint(int(this.getDefaultValue().intValue()));
        stringBuffer.append(" Modifiable: ");
        stringBuffer.appendboolean(this.isModifiable().booleanValue());
        return stringBuffer.toString();
    }
    

    void setModifiable(JBoolean@ modifiable)
    {
        @this.modifiable_GameConfiguration = modifiable;
    }
    

    JBoolean@ isModifiable()
    {
        return this.modifiable_GameConfiguration;
    }
}

namespace GameConfiguration
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_MIN_VALUE = JInteger().jinit_JInteger(Integer::MIN_VALUE);
    }

    JInteger@ jcell_MIN_VALUE;
    JInteger@ get_MIN_VALUE() property { jclinit(); return jcell_MIN_VALUE; }
    void set_MIN_VALUE(JInteger@ value) property { jclinit(); @jcell_MIN_VALUE = value; }
}

