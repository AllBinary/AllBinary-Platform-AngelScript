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
    CommonStrings@ commonStrings_Sounds;
    SoundStrings@ soundStrings_Sounds;
    SoundsFactoryInterface@ soundsFactoryInterface_Sounds;

    // Java field initializers run after the super constructor
    void jfields_Sounds()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_Sounds = CommonStrings::getInstance();
    @this.soundStrings_Sounds = SoundStrings::getInstance();
    
    }
    

    Sounds@ jinit_Sounds(SoundsFactoryInterface@ soundsFactoryInterface)
    {
        this.jfields_Sounds();
        @this.soundsFactoryInterface_Sounds = soundsFactoryInterface;
        return this;
    }
    

    void init()
    {
        this.logUtil.putF(this.commonStrings_Sounds.START, this, this.commonStrings_Sounds.INIT);
        CommonLabels@ commonLabels = CommonLabels::getInstance();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        this.soundsFactoryInterface_Sounds.init();
        Sound@[]@ soundInterfaceArray = this.soundsFactoryInterface_Sounds.getSoundInterfaceArray();
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
                stringBuffer.append(this.soundStrings_Sounds.SOUND);
                stringBuffer.append(jClassName(soundInterface));
                this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings_Sounds.INIT);
                soundInterface.init();
                progressCanvas.addNormalPortion(100, StringMaker().jinit_StringMaker().append(this.soundStrings_Sounds.INIT_SOUND).append(indexString).toString());
            }
        }
        this.soundsFactoryInterface_Sounds.setInitialized(true);
        this.logUtil.putF(this.commonStrings_Sounds.END, this, this.commonStrings_Sounds.INIT);
    }
    

    void stopAll()
    {
        this.logUtil.putF(this.commonStrings_Sounds.START, this, this.soundStrings_Sounds.STOP_ALL);
        Sound@[]@ soundInterfaceArray = this.soundsFactoryInterface_Sounds.getSoundInterfaceArray();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        Player@ player;
        for (int index = 0; index < int(soundInterfaceArray.length()); index++) {
            if (soundInterfaceArray[index] !is null) {
                @player = soundInterfaceArray[index].getPlayerP();
                if (player !is null) {
                    player.stop();
                    progressCanvas.addPortion(100, this.soundStrings_Sounds.STOPPING_SOUND, index);
                }
            }
        }
    }
    

    void closeAll()
    {
        this.logUtil.putF(this.commonStrings_Sounds.START, this, this.soundStrings_Sounds.CLOSE_ALL);
        Sound@[]@ soundInterfaceArray = this.soundsFactoryInterface_Sounds.getSoundInterfaceArray();
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        Player@ player;
        for (int index = 0; index < int(soundInterfaceArray.length()); index++) {
            if (soundInterfaceArray[index] !is null) {
                @player = soundInterfaceArray[index].getPlayerP();
                if (player !is null) {
                    player.close();
                    progressCanvas.addPortion(100, this.soundStrings_Sounds.CLOSING_SOUND, index);
                }
            }
        }
    }
}

