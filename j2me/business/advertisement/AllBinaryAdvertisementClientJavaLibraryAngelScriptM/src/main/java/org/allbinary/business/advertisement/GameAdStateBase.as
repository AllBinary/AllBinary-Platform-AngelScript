/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.business.advertisement

class GameAdStateBase : JObjectBase
{
    AdConfiguration@ adConfigurationP;
    Advertisements@ advertisementsP;
    bool okayToShowAdsP;

    // Java field initializers run after the super constructor
    void jfields_GameAdStateBase()
    {
    
    @this.advertisementsP = Advertisements().jinit_Advertisements();
    
    }
    

    GameAdStateBase@ jinit_GameAdStateBase(AdConfiguration@ adConfiguration)
    {
        this.jfields_GameAdStateBase();
        @this.adConfigurationP = adConfiguration;
        return this;
    }
    

    void initViewArray(JObject@[]@ viewArray)
    {
    }
    

    void onStart(JObject@ anyType)
    {
        this.init();
    }
    

    void init()
    {
    }
    

    bool isShowingAtLocation(int location)
    {
        return false;
    }
    

    bool isShowingAt()
    {
        return false;
    }
    

    void show()
    {
    }
    

    void hide()
    {
    }
    

    void onEvent(AllBinaryEventObject@ eventObject)
    {
        ForcedLogUtil::log(EventStrings::getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void processAdState(GameState@ gameState, GameType@ gameType)
    {
    }
    

    void processPageAdState()
    {
    }
    

    void playingAdState()
    {
    }
    

    void playingAdStateWH(int width, int height)
    {
    }
    

    void notPlayingAdState()
    {
    }
    

    void setGameIsReady(bool gameIsReady)
    {
    }
    

    bool isGameIsReady()
    {
        return false;
    }
    

    Advertisements@ getAdvertisements()
    {
        return this.advertisementsP;
    }
    

    AdConfiguration@ getAdConfiguration()
    {
        return this.adConfigurationP;
    }
    

    bool isOkayToShowPageAd()
    {
        return false;
    }
    

    void setOkayToShowAds(bool okayToShowAds)
    {
        this.okayToShowAdsP = okayToShowAds;
    }
    

    bool isOkayToShowAds()
    {
        return this.okayToShowAdsP;
    }
    

    bool isEnabled()
    {
        return false;
    }
}

