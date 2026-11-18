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

class GameFeatureItemStateListener : JObjectBase, ItemStateListener
{
    LogUtil@ logUtil;
    GameOptionsForm@ gameOptionsForm;

    // Java field initializers run after the super constructor
    void jfields_GameFeatureItemStateListener()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    GameFeatureItemStateListener@ jinit_GameFeatureItemStateListener(GameOptionsForm@ gameOptionsForm)
    {
        this.jfields_GameFeatureItemStateListener();
        @this.gameOptionsForm = gameOptionsForm;
        GameFeatureFactory@ gameFeatureFactory = GameFeatureFactory::getInstance();
        GameFeatureItemStateListener::add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
        GameFeatureItemStateListener::add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
        GameFeatureItemStateListener::add(gameFeatureFactory.DAMAGE_FLOATERS);
        GameFeatureItemStateListener::add(gameFeatureFactory.DROPPED_ITEMS);
        GameFeatureItemStateListener::add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
        GameFeatureItemStateListener::add(gameFeatureFactory.HEALTH_BARS);
        GameFeatureItemStateListener::add(gameFeatureFactory.SOUND);
        GameFeatureItemStateListener::add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
        return this;
    }
    

    void itemStateChanged(Item@ item)
    {
        try {
            string itemLabel = item.getLabel();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((cast<GameConfigurationGauge>(item) !is null)) {
                GameConfigurationUtil::getInstance().change(this.gameOptionsForm, cast<GameConfigurationGauge>(item));
            } else if ((cast<ChoiceGroup>(item) !is null)) {
                GameFeatureUtil@ gameFeatureUtil = GameFeatureUtil::getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup(cast<ChoiceGroup>(item));
                } else {
                    gameFeatureUtil.updateMultiple(cast<ChoiceGroup>(item));
                }
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "itemStateChanged", e);
            }
            else { jthrow(jex0); }
        }
    }
}

namespace GameFeatureItemStateListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_toggleList = BasicArrayListD().jinit_BasicArrayListD();
    }

    BasicArrayList@ jcell_toggleList;
    BasicArrayList@ get_toggleList() property { jclinit(); return jcell_toggleList; }
    void set_toggleList(BasicArrayList@ value) property { jclinit(); @jcell_toggleList = value; }
    

    void add(GameFeature@ gameFeature)
    {
        if (!GameFeatureItemStateListener::toggleList.contains(gameFeature)) {
            GameFeatureItemStateListener::toggleList.add(gameFeature);
        }
    }
}

