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

class GameOptionsForm : CommandForm
{
    MIDPUtil@ meUtil_GameOptionsForm;

    // Java field initializers run after the super constructor
    void jfields_GameOptionsForm()
    {
    @this.meUtil_GameOptionsForm = MIDPUtil::getInstance();
    }
    

    GameOptionsForm@ jinit_GameOptionsForm(CommandListener@ commandListener, string title, BasicColor@ backgrounBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.jfields_GameOptionsForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.addConfiguration();
        GameFeatureFormUtil@ gameFeatureFormUtil = GameFeatureFormUtil::getInstance();
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups::getExclusiveInstance().get(), Choice::EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups::getMultipleInstance().get(), Choice::MULTIPLE);
        this.initCommands(commandListener);
        this.setItemStateListener(GameFeatureItemStateListener().jinit_GameFeatureItemStateListener(this));
        this.addTextFieldsIfSimulated();
        return this;
    }
    

    void closeClientInformation(AbeClientInformationInterface@ abeClientInformation)
    {
        CommandForm::close();
        this.save(abeClientInformation);
    }
    

    void addTextFieldsIfSimulated()
    {
        string key = OrientationData::getInstance().ORIENTATION_SENSOR_INPUT;
        ABHashtable@ hashtable = GameFeatureChoiceGroups::getExclusiveInstance().get();
        if (hashtable !is null) {
            JObject@ listCanBeNull = hashtable.get(key);
            if (listCanBeNull !is null) {
                BasicArrayList@ list = cast<BasicArrayList>(listCanBeNull);
                if (list.contains(SensorFeatureFactory::getInstance().SIMULATED_ORIENTATION_SENSORS)) {
                    this.addTextFields();
                }
            }
        }
    }
    

    void addTextFields()
    {
        ABHashtable@ hashtable = GameConfigurationTextInput::getHashtable();
        int size = hashtable.size();
        JObject@[]@ objectArray = HashtableUtil::getInstance().getKeysAsArray(hashtable);
        GameConfigurationTextInput@ gameConfigurationTextInput;
        TextField@ textField;
        for (int index = 0; index < size; index++) {
            @gameConfigurationTextInput = cast<GameConfigurationTextInput>(hashtable.get(objectArray[index]));
            @textField = TextField().jinit_TextField(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField::ANY);
            this.meUtil_GameOptionsForm.appendItem(this, textField);
        }
    }
    

    void addConfiguration()
    {
        string METHOD_NAME = "addConfiguration";
        string NAME = "Name: ";
        BasicArrayList@ list = GameConfigurationSingleton::getInstance().getOptionsBasicArrayList();
        Command@ GAUGE_CHANGE = MyCommandsFactory::getInstance().GAUGE_CHANGE;
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        int size = list.size();
        GameConfiguration@ gameConfiguration;
        GameConfigurationGauge@ gauge;
        for (int index = 0; index < size; index++) {
            @gameConfiguration = cast<GameConfiguration>(list.objectArray[index]);
            stringMaker.delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(NAME).append(gameConfiguration.toString()).toString(), this, METHOD_NAME);
            @gauge = GameConfigurationGauge().jinit_GameConfigurationGauge(gameConfiguration);
            gauge.setDefaultCommand(GAUGE_CHANGE);
            gauge.setItemCommandListener(GameFeatureItemCommandListener().jinit_GameFeatureItemCommandListener(this));
            this.meUtil_GameOptionsForm.appendItem(this, gauge);
        }
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
        GameCommandsFactory@ gameCommandsFactory = GameCommandsFactory::getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_OPTIONS);
        this.addCommand(gameCommandsFactory.DEFAULT_OPTIONS);
        this.setCommandListener(cmdListener);
    }
    

    void save(AbeClientInformationInterface@ abeClientInformation)
    {
        int size = this.size();
        Item@ item;
        for (int index = 0; index < size; index++) {
            @item = this.get(index);
            if ((cast<GameConfigurationGauge>(item) !is null)) {
                GameConfigurationUtil::getInstance().update(cast<GameConfigurationGauge>(item));
            } else if ((cast<TextField>(item) !is null)) {
                GameConfigurationTextInput::update(cast<TextField>(item));
            }
        }
        GameConfigurationUtil::getInstance().updateCompetitionValue();
        ABHashtable@ hashtable = StdUtil::getInstance().createHashtable();
        GameConfiguration@ SCALE = GameConfigurationCentral::getInstance().SCALE;
        hashtable.put(SCALE.getName(), Integer::toString(SCALE.getValue().intValue()));
        KeyValuePersistance@ keyValuePersistance = GameConfigurationPersistanceSingleton::getInstance();
        keyValuePersistance.clear();
        keyValuePersistance.loadAll(abeClientInformation);
        BasicArrayList@ list = keyValuePersistance.getIds();
        keyValuePersistance.save(abeClientInformation, hashtable);
        int size2 = list.size();
        JInteger@ integer;
        for (int index = 0; index < size2; index++) {
            @integer = cast<JInteger>(list.objectArray[index]);
            keyValuePersistance.delete(abeClientInformation, integer.intValue());
        }
    }
}

