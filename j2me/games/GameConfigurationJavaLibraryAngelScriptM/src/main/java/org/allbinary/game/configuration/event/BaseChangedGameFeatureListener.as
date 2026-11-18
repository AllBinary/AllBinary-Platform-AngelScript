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
// package org.allbinary.game.configuration.event

class BaseChangedGameFeatureListener : JObjectBase, GameFeatureListenerInterface
{
    LogUtil@ logUtil;
    GameFeatureUtil@ gameFeatureUtil;
    BasicArrayList@ list;
    bool changed;

    // Java field initializers run after the super constructor
    void jfields_BaseChangedGameFeatureListener()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.gameFeatureUtil = GameFeatureUtil::getInstance();
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    this.changed = true;
    }

    BaseChangedGameFeatureListener@ jinit_BaseChangedGameFeatureListener()
    {
        this.jfields_BaseChangedGameFeatureListener();
        return this;
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(CommonStrings::getInstance().NOT_IMPLEMENTED, this);
    }
    

    void onGameFeatureChange(GameFeatureEvent@ gameFeatureEvent)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).toString(), this, this.gameFeatureUtil.ON_GAME_FEATURE_CHANGE);
        this.list.add(gameFeatureEvent.getGameOption());
        this.setChanged(true);
    }
    

    void add(Feature@ gameFeature)
    {
        this.list.add(gameFeature);
    }
    

    void remove(Feature@ gameFeature)
    {
        this.list.remove(gameFeature);
    }
    

    void setChanged(bool initialized)
    {
        this.changed = initialized;
        if (!this.isChanged()) {
            this.list.clear();
        }
    }
    

    bool isChangedFeature(Feature@ gameFeature)
    {
        bool isChanged = this.list.contains(gameFeature);
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("GameFeature: ");
        stringBuffer.append(StringUtil::getInstance().toString(gameFeature));
        stringBuffer.append(" isFeature: ");
        stringBuffer.appendboolean(Features::getInstance().isFeature(gameFeature));
        stringBuffer.append(" isChanged: ");
        stringBuffer.appendboolean(isChanged);
        this.logUtil.putF(stringBuffer.toString(), this, "isChanged");
        return isChanged;
    }
    

    bool isChanged()
    {
        return this.changed;
    }
}

