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

class GameFeatureItemCommandListener : JObjectBase, ItemCommandListener
{
    LogUtil@ logUtil;
    GameOptionsForm@ gameOptionsForm_GameFeatureItemCommandListener;

    // Java field initializers run after the super constructor
    void jfields_GameFeatureItemCommandListener()
    {
    @this.logUtil = LogUtil::getInstance();
    
    }
    

    GameFeatureItemCommandListener@ jinit_GameFeatureItemCommandListener(GameOptionsForm@ gameOptionsForm)
    {
        this.jfields_GameFeatureItemCommandListener();
        @this.gameOptionsForm_GameFeatureItemCommandListener = gameOptionsForm;
        return this;
    }
    

    void commandAction(Command@ command, Item@ item)
    {
        try {
            string itemLabel = item.getLabel();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().ITEM_LABEL).append(itemLabel).toString(), this, MidletStrings::getInstance().COMMAND_ACTION);
            if ((cast<GameConfigurationGauge>(item) !is null)) {
                GameConfigurationUtil::getInstance().change(this.gameOptionsForm_GameFeatureItemCommandListener, cast<GameConfigurationGauge>(item));
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, MidletStrings::getInstance().COMMAND_ACTION, e);
            }
            else { jthrow(jex0); }
        }
    }
}

