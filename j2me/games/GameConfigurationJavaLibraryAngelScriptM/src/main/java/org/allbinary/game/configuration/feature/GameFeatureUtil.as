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

class GameFeatureUtil : JObjectBase
{
    LogUtil@ logUtil;
    TsUtil@ tsUtil;
    EnumerationUtil@ enumerationUtil;
    string ON_GAME_FEATURE_CHANGE;
    string GAME_FEATURE_CHANGED;

    // Java field initializers run after the super constructor
    void jfields_GameFeatureUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.tsUtil = TsUtil::getInstance();
    @this.enumerationUtil = EnumerationUtil::getInstance();
    this.ON_GAME_FEATURE_CHANGE = "onGameFeatureChange";
    this.GAME_FEATURE_CHANGED = "Game Feature Changed: ";
    }

    GameFeatureUtil@ jinit_GameFeatureUtil()
    {
        this.jfields_GameFeatureUtil();
        return this;
    }
    

    void setDefault(ChoiceGroup@ choiceGroup)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        string METHOD_NAME = "setDefault";
        string SELECTED_ARRAY_RETURN = "selectedArray_return[";
        string SELECTED_SEP = "] = ";
        bool[]@ selectedArray_return = array<bool>(choiceGroup.size());
        int total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        Features@ features = Features::getInstance();
        for (int index = 0; index < int(selectedArray_return.length()); index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            string selectedChoiceLabel = choiceGroup.getString(index);
            Feature@ gameFeature = Feature::getInstance(selectedChoiceLabel);
            if (features.isDefault(gameFeature)) {
                features.add(gameFeature);
                choiceGroup.setSelectedIndex(index, true);
            } else {
                features.remove(gameFeature);
                choiceGroup.setSelectedIndex(index, false);
            }
        }
    }
    

    void updateMultiple(ChoiceGroup@ choiceGroup)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        string METHOD_NAME = "updateMultiple";
        string SELECTED_ARRAY_RETURN = "selectedArray_return[";
        string SELECTED_SEP = "] = ";
        bool[]@ selectedArray_return = array<bool>(choiceGroup.size());
        int total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        Features@ features = Features::getInstance();
        for (int index = 0; index < int(selectedArray_return.length()); index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            string selectedChoiceLabel = choiceGroup.getString(index);
            Feature@ gameFeature = Feature::getInstance(selectedChoiceLabel);
            if (!isSelected && features.isFeature(gameFeature)) {
                features.remove(gameFeature);
            } else if (isSelected && !features.isFeature(gameFeature)) {
                features.add(gameFeature);
            }
        }
    }
    

    void updateExclusiveForChoiceGroup(ChoiceGroup@ choiceGroup)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        string METHOD_NAME = "updateExclusive";
        string SELECTED_ARRAY_RETURN = "selectedArray_return[";
        string SELECTED_SEP = "] = ";
        bool[]@ selectedArray_return = array<bool>(choiceGroup.size());
        int total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Exclusive Total Choices: 1==");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        for (int index = 0; index < int(selectedArray_return.length()); index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            if (isSelected) {
                string selectedChoiceLabel = choiceGroup.getString(index);
                this.updateExclusive(selectedChoiceLabel);
            }
        }
    }
    

    bool isExclusive(string itemLabel)
    {
        Enumeration@ enumeration = GameFeatureChoiceGroups::getExclusiveInstance().get().keys();
        string name = "";
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            name = jstringOf(this.enumerationUtil.nextElement(enumeration));
            if (this.tsUtil.compareTo(itemLabel, name) == 0) {
                return true;
            }
        }
        return false;
    }
    

    void updateExclusive(string selectedChoiceLabel)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), this, "updateExclusive");
        Feature@ gameFeature = Feature::getInstance(selectedChoiceLabel);
        ABHashtable@ hashtable = GameFeatureChoiceGroups::getExclusiveInstance().get();
        JObject@[]@ objectArray = HashtableUtil::getInstance().getKeysAsArray(hashtable);
        BasicArrayList@ basicArrayList;
        JObject@ anyType;
        int size = int(objectArray.length());
        for (int index = 0; index < size; index++) {
            @anyType = objectArray[index];
            @basicArrayList = cast<BasicArrayList>(hashtable.get(anyType));
            this.updateExclusiveList(gameFeature, basicArrayList);
        }
    }
    

    void updateExclusiveList(Feature@ gameFeature, BasicArrayList@ list)
    {
        if (list.contains(gameFeature)) {
            Features@ features = Features::getInstance();
            int addIndex = list.indexOf(gameFeature);
            int size = list.size();
            for (int index = 0; index < size; index++) {
                if (addIndex != index) {
                    features.remove(cast<Feature>(list.objectArray[index]));
                } else {
                    features.add(cast<Feature>(list.objectArray[index]));
                }
            }
        }
    }
}

namespace GameFeatureUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameFeatureUtil().jinit_GameFeatureUtil();
    }

    GameFeatureUtil@ jcell_instance;
    GameFeatureUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameFeatureUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    GameFeatureUtil@ getInstance()
    {
        return GameFeatureUtil::instance;
    }
}

