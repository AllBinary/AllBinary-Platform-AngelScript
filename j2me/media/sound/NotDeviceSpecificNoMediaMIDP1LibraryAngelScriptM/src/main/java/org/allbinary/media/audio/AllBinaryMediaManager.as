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

//NotDeviceSpecificNoMediaMIDP1Library
class AllBinaryMediaManager : JObjectBase
{
    

    AllBinaryMediaManager@ jinit_AllBinaryMediaManager()
    {
        return this;
    }
}

namespace AllBinaryMediaManager
{
    const string THIS = "AllBinaryMediaManagerNoMediaMIDP1";
    

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
    

    Player@ createPlayerFromInputStream(InputStream@ stream, string type)
    {
        LogUtil@ logUtil = LogUtil::getInstance();
        CommonStrings@ commonString = CommonStrings::getInstance();
        logUtil.putF(commonString.START, jbox(AllBinaryMediaManager::THIS), "creatPlayer(InputStream)");
        return cast<Player>(NoPlayer::NO_PLAYER);
    }
    

    Player@ createPlayer(string locator)
    {
        LogUtil@ logUtil = LogUtil::getInstance();
        CommonStrings@ commonString = CommonStrings::getInstance();
        logUtil.putF(commonString.START, jbox(AllBinaryMediaManager::THIS), "creatPlayer(locator)");
        return cast<Player>(NoPlayer::NO_PLAYER);
    }
    

    void playTone(int frequency, int time, int volume)
    {
    }
    

    string[]@ getSupportedContentTypes(string protocol)
    {
        return StringUtil::getInstance().getArrayInstance();
    }
    

    string[]@ getSupportedProtocols(string content_type)
    {
        return StringUtil::getInstance().getArrayInstance();
    }
}

