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

//NotDeviceSpecificMIDP2JavaLibrary
class AllBinaryMediaManager : JObjectBase
{
    

    AllBinaryMediaManager@ jinit_AllBinaryMediaManager()
    {
        return this;
    }
}

namespace AllBinaryMediaManager
{
    const string THIS = "AllBinaryMediaManagerNoMIPD2";
    

    bool isMuted()
    {
        return false;
    }
    

    void setMuted(bool aMuted)
    {
    }
    

    bool update()
    {
        return true;
    }
    

    void init(SoundsFactoryInterface@ soundsFactoryInterface)
    {
        LogUtil@ logUtil = LogUtil::getInstance();
        CommonStrings@ commonString = CommonStrings::getInstance();
        logUtil.putF(commonString.START, jbox(AllBinaryMediaManager::THIS), commonString.INIT);
        ProgressCanvasFactory::getInstance().addNormalPortion(50, "Media Manager");
        Sounds().jinit_Sounds(soundsFactoryInterface).init();
    }
    

    void shutdown(SoundsFactoryInterface@ soundsFactoryInterface)
    {
        Sounds().jinit_Sounds(soundsFactoryInterface).stopAll();
        Sounds().jinit_Sounds(soundsFactoryInterface).closeAll();
        TsUtil::getInstance().gc();
    }
    

    Player@ createPlayer(string resource)
    {
        if (Features::getInstance().isFeature(GameFeatureFactory::getInstance().SOUND)) {
            if (TsUtil::getInstance().compareTo(resource, Manager::TONE_DEVICE_LOCATOR) == 0) {
                return Manager::createPlayer(resource);
            } else {
                InputStream@ inputStream = ResourceUtil::getInstance().getResourceAsStream(resource);
                return MIDPUtil::getInstance().createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory::getInstance().MIME_AUDIO_WAV.getName());
            }
        } else {
            return NoPlayer::NO_PLAYER;
        }
        return null;
    }
    

    void playTone(int frequency, int time, int volume)
    {
        if (Features::getInstance().isFeature(GameFeatureFactory::getInstance().SOUND)) {
            Manager::playTone(frequency, time, volume);
        }
    }
}

