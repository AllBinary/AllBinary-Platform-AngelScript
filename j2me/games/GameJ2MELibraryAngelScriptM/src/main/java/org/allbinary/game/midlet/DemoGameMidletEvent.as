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
// package org.allbinary.game.midlet

class DemoGameMidletEvent : AllBinaryEventObject
{
    DemoGameMidletState@ demoGameMidletState_DemoGameMidletEvent;
    

    DemoGameMidletEvent@ jinit_DemoGameMidletEvent(JObject@ anyType, DemoGameMidletState@ demoGameMidletState)
    {
        this.jinit_AllBinaryEventObject(anyType);
        @this.demoGameMidletState_DemoGameMidletEvent = demoGameMidletState;
        return this;
    }
    

    void init(JObject@ anyType)
    {
        this.setSource(anyType);
    }
    

    void setDemoGameMidletState(DemoGameMidletState@ demoGameMidletState)
    {
        @this.demoGameMidletState_DemoGameMidletEvent = demoGameMidletState;
    }
    

    DemoGameMidletState@ getDemoGameMidletState()
    {
        return this.demoGameMidletState_DemoGameMidletEvent;
    }
}

