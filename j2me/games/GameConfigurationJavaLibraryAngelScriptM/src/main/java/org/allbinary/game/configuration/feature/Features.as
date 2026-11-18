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

class Features : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    BasicArrayList@ list;
    BasicArrayList@ defaultList;

    // Java field initializers run after the super constructor
    void jfields_Features()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    }
    

    Features@ jinit_Features()
    {
        this.jfields_Features();
        @this.list = BasicArrayListD().jinit_BasicArrayListD();
        @this.defaultList = BasicArrayListD().jinit_BasicArrayListD();
        this.init();
        return this;
    }
    

    void addDefault(Feature@ gameFeature)
    {
        this.add(gameFeature);
        if (!this.defaultList.contains(gameFeature)) {
            this.defaultList.add(gameFeature);
        }
    }
    

    void add(Feature@ gameFeature)
    {
        if (!this.list.contains(gameFeature)) {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, this.commonStrings.ADD);
            this.list.add(gameFeature);
            GameFeatureEventHandler::getInstance().fireEvent(GameFeatureEvent().jinit_GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    void removeDefault(Feature@ gameFeature)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, "removeDefault");
        this.remove(gameFeature);
        this.defaultList.remove(gameFeature);
    }
    

    void remove(Feature@ gameFeature)
    {
        if (this.list.contains(gameFeature)) {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.REMOVE);
            this.list.remove(gameFeature);
            GameFeatureEventHandler::getInstance().fireEvent(GameFeatureEvent().jinit_GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    void init()
    {
        try {
            GameFeatureFactory@ gameFeatureFactory = GameFeatureFactory::getInstance();
            InputFeatureFactory@ inputFeatureFactory = InputFeatureFactory::getInstance();
            SensorFeatureFactory@ sensorFeatureFactory = SensorFeatureFactory::getInstance();
            TouchFeatureFactory@ touchFeatureFactory = TouchFeatureFactory::getInstance();
            this.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
            this.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
            this.addDefault(inputFeatureFactory.MULTI_KEY_PRESS);
            this.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES);
            this.addDefault(gameFeatureFactory.SCREEN_SHAKE);
            this.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION);
            GenericOperatingSystem@ operatingSystemInterface = OperatingSystemFactory::getInstance().getOperatingSystemInstance();
            if (operatingSystemInterface.isOverScan()) {
                this.addDefault(sensorFeatureFactory.NO_ORIENTATION);
                this.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            } else {
                this.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS);
                this.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            }
            this.addDefault(touchFeatureFactory.TOUCH_ENABLED);
            this.addDefault(MainFeatureFactory::getInstance().FULL_SCREEN);
            this.addDefault(MainFeatureFactory::getInstance().LOAD_ONDEMAND);
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            PreLogUtil::putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
            }
            else { jthrow(jex0); }
        }
    }
    

    bool isDefault(Feature@ gameFeature)
    {
        return this.defaultList.contains(gameFeature);
    }
    

    bool isFeature(Feature@ gameFeature)
    {
        return this.list.contains(gameFeature);
    }
    

    void toggle(Feature@ gameFeature)
    {
        if (this.isFeature(gameFeature)) {
            this.remove(gameFeature);
        } else {
            this.add(gameFeature);
        }
    }
}

namespace Features
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
    

    Features@ getInstance()
    {
        if (Features::SINGLETON is NullUtil::getInstance().NULL_OBJECT) {
            @Features::SINGLETON = Features().jinit_Features();
        }
        return cast<Features>(Features::SINGLETON);
    }
}

