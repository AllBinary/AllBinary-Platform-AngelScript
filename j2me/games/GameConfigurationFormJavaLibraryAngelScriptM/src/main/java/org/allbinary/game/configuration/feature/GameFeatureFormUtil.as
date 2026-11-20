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
// package org.allbinary.game.configuration.feature

class GameFeatureFormUtil : JObjectBase
{
    LogUtil@ logUtil;
    MIDPUtil@ meUtil_GameFeatureFormUtil;

    // Java field initializers run after the super constructor
    void jfields_GameFeatureFormUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.meUtil_GameFeatureFormUtil = MIDPUtil::getInstance();
    }

    GameFeatureFormUtil@ jinit_GameFeatureFormUtil()
    {
        this.jfields_GameFeatureFormUtil();
        return this;
    }
    

    ChoiceGroup@ getChoiceGroup(ABHashtable@ hashtable, string name, int option)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        ChoiceGroup@ choiceGroup = ChoiceGroup().jinit_ChoiceGroup(name, option, StringUtil::getInstance().getArrayInstance(), NullImage::NULL_IMAGE_ARRAY);
        BasicArrayList@ list = cast<BasicArrayList>(hashtable.get(jbox(name)));
        Features@ features = Features::getInstance();
        string ADD_CHOICE = ": Adding Choice: ";
        string GET_CHOICE_GROUP = "getChoiceGroup";
        int size = list.size();
        for (int index = 0; index < size; index++) {
            Feature@ gameFeature = cast<Feature>(list.objectArray[index]);
            stringMaker.delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), this, GET_CHOICE_GROUP);
            choiceGroup.append(gameFeature.toString(), NullImage::NULL_IMAGE);
            if (features.isFeature(gameFeature)) {
                choiceGroup.setSelectedIndex(index, true);
            }
        }
        return choiceGroup;
    }
    

    void addChoiceGroup(CommandForm@ form, ABHashtable@ hashtable, int option)
    {
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        string ADDING_CHOICE_GROUP = "Adding Choice Group: ";
        string ADD_CHOICE_GROUP = "addChoiceGroup";
        int size = hashtable.size();
        JObject@[]@ objectArray = HashtableUtil::getInstance().getKeysAsArray(hashtable);
        string name = "";
        for (int index = 0; index < size; index++) {
            name = jstringOf(objectArray[index]);
            stringMaker.delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(ADDING_CHOICE_GROUP).append(name).toString(), this, ADD_CHOICE_GROUP);
            this.meUtil_GameFeatureFormUtil.appendItem(form, this.getChoiceGroup(hashtable, name, option));
        }
    }
    

    void setDefault(CommandForm@ form)
    {
        int size = form.size();
        for (int index = 0; index < size; index++) {
            Item@ item = form.get(index);
            if ((cast<GameConfigurationGauge>(item) !is null)) {
                GameConfigurationUtil::getInstance().setDefault(cast<GameConfigurationGauge>(item));
            } else if ((cast<ChoiceGroup>(item) !is null)) {
                GameFeatureUtil::getInstance().setDefault(cast<ChoiceGroup>(item));
            }
        }
    }
}

namespace GameFeatureFormUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameFeatureFormUtil().jinit_GameFeatureFormUtil();
    }

    GameFeatureFormUtil@ jcell_instance;
    GameFeatureFormUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameFeatureFormUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    GameFeatureFormUtil@ getInstance()
    {
        return GameFeatureFormUtil::instance;
    }
}

