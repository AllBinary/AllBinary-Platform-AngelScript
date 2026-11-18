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
// package org.allbinary.business.advertisement

class AdConfiguration : JObjectBase
{
    string INNERACTIVE;
    string LEADBOLT;
    string ADMOB;
    

    AdConfiguration@ jinit_AdConfiguration(JObject@[]@ advertIdArray)
    {
        this.INNERACTIVE = jstringOf(advertIdArray[0]);
        this.ADMOB = jstringOf(advertIdArray[1]);
        this.LEADBOLT = jstringOf(advertIdArray[2]);
        return this;
    }
    

    Direction@[]@ getValidAdSpots()
    {
        return array<Direction@>(0);
    }
    

    void process(GameState@ gameState)
    {
    }
    

    void processDemo(int state)
    {
    }
    

    void setShowAds()
    {
    }
    

    void setToggleAds(bool showAds)
    {
    }
    

    bool isShowAds()
    {
        return true;
    }
}

