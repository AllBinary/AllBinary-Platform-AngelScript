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

class GameFeatureEvent : AllBinaryEventObject
{
    string whatChanged_GameFeatureEvent;
    

    GameFeatureEvent@ jinit_GameFeatureEvent(JObject@ anyType, string whatChanged)
    {
        this.jinit_AllBinaryEventObject(anyType);
        this.whatChanged_GameFeatureEvent = whatChanged;
        return this;
    }
    

    string getWhatChanged()
    {
        return this.whatChanged_GameFeatureEvent;
    }
    

    JObject@ getGameOption()
    {
        return this.getSource();
    }
}

