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

class InGameFeatures : Init
{

    InGameFeatures@ jinit_InGameFeatures()
    {
        this.jinit_Init();
        return this;
    }
    

    void init()
    {
        string LABEL = "Screen Buttons";
        OrientationData@ orientationData = OrientationData::getInstance();
        BasicArrayList@ exclusiveOrientationSensorVector = cast<BasicArrayList>(GameFeatureChoiceGroups::getExclusiveInstance().get().get(orientationData.ORIENTATION_SENSOR_INPUT));
        InGameFeatureChoiceGroups@ inGameFeatureChoiceGroups = InGameFeatureChoiceGroups::getExclusiveInstance();
        if (exclusiveOrientationSensorVector !is null) {
            JObject@ inGameExclusiveOrientationSensorVectorCanBeNull = inGameFeatureChoiceGroups.get().get(orientationData.ORIENTATION_SENSOR_INPUT);
            if (inGameExclusiveOrientationSensorVectorCanBeNull is null) {
                this.addToInGameMenu();
            } else {
                BasicArrayList@ inGameExclusiveOrientationSensorVector = cast<BasicArrayList>(inGameExclusiveOrientationSensorVectorCanBeNull);
                if (inGameExclusiveOrientationSensorVector.size() == 0) {
                    this.addToInGameMenu();
                }
            }
        }
        Features@ features = Features::getInstance();
        if (features.isFeature(TouchFeatureFactory::getInstance().SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory::getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory::getInstance().HIDE_SCREEN_BUTTONS)) {
            BasicArrayList@ exclusiveScreenButtonsVector = BasicArrayListD().jinit_BasicArrayListD();
            TouchFeatureFactory@ touchFeatureFactory = TouchFeatureFactory::getInstance();
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            inGameFeatureChoiceGroups.add(LABEL, exclusiveScreenButtonsVector);
        }
    }
    

    void addToInGameMenu()
    {
        OrientationData@ orientationData = OrientationData::getInstance();
        BasicArrayList@ inGameExclusiveOrientationSensorVector = BasicArrayListD().jinit_BasicArrayListD();
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory::getInstance().ORIENTATION_SENSORS);
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory::getInstance().NO_ORIENTATION);
        InGameFeatureChoiceGroups::getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector);
    }
    

    bool isAny()
    {
        Features@ features = Features::getInstance();
        TouchFeatureFactory@ touchFeatureFactory = TouchFeatureFactory::getInstance();
        if (features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            return true;
        }
        BasicArrayList@ exclusiveOrientationSensorVector = cast<BasicArrayList>(GameFeatureChoiceGroups::getExclusiveInstance().get().get(OrientationData::getInstance().ORIENTATION_SENSOR_INPUT));
        if (exclusiveOrientationSensorVector !is null) {
            return true;
        }
        return false;
    }
}

