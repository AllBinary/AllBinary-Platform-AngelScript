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
// package org.allbinary.media.audio

class Sounds : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    SoundStrings@ soundStrings;
    SoundsFactoryInterface@ soundsFactoryInterface;

    // Java field initializers run after the super constructor
    void jfields_Sounds()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    @this.soundStrings = SoundStrings::getInstance();
    
    }
    

    Sounds@ jinit_Sounds(SoundsFactoryInterface@ soundsFactoryInterface)
    {
        this.jfields_Sounds();
        @this.soundsFactoryInterface = soundsFactoryInterface;
        return this;
    }
    

    void init()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        CommonLabels@ commonLabels = CommonLabels::getInstance();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        this.soundsFactoryInterface.init();
        Sound@[]@ soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        JInteger@ indexInteger;
        string indexString = "";
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        for (int i = 0; i < int(soundInterfaceArray.length()); i++) {
            Sound@ soundInterface = soundInterfaceArray[i];
            if (soundInterface !is null) {
                @indexInteger = smallIntegerSingletonFactory.getAt(i);
                indexString = indexInteger.toString();
                stringBuffer.delete(0, stringBuffer.length());
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.append(indexString);
                stringBuffer.append(this.soundStrings.SOUND);
                stringBuffer.append(jClassName(soundInterface));
                this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
                soundInterface.init();
                progressCanvas.addNormalPortion(100, StringMaker().jinit_StringMaker().append(this.soundStrings.INIT_SOUND).append(indexString).toString());
            }
        }
        this.soundsFactoryInterface.setInitialized(true);
        this.logUtil.putF(this.commonStrings.END, this, this.commonStrings.INIT);
    }
    

    void stopAll()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.STOP_ALL);
        Sound@[]@ soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        Player@ player;
        for (int index = 0; index < int(soundInterfaceArray.length()); index++) {
            if (soundInterfaceArray[index] !is null) {
                @player = soundInterfaceArray[index].getPlayerP();
                if (player !is null) {
                    player.stop();
                    progressCanvas.addPortion(100, this.soundStrings.STOPPING_SOUND, index);
                }
            }
        }
    }
    

    void closeAll()
    {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.CLOSE_ALL);
        Sound@[]@ soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        Player@ player;
        for (int index = 0; index < int(soundInterfaceArray.length()); index++) {
            if (soundInterfaceArray[index] !is null) {
                @player = soundInterfaceArray[index].getPlayerP();
                if (player !is null) {
                    player.close();
                    progressCanvas.addPortion(100, this.soundStrings.CLOSING_SOUND, index);
                }
            }
        }
    }
}

