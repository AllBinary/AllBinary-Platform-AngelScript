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
// package org.allbinary.game.layer.hud.event

class GameNotificationEvent : AllBinaryEventObject
{
    string string__GameNotificationEvent;
    JInteger@ seconds_GameNotificationEvent;
    BasicColor@ basicColor_GameNotificationEvent;
    JBoolean@ removeable_GameNotificationEvent;

    // Java field initializers run after the super constructor
    void jfields_GameNotificationEvent()
    {
    this.string__GameNotificationEvent = StringUtil::getInstance().EMPTY_STRING;
    
    @this.basicColor_GameNotificationEvent = BasicColorFactory::getInstance().BLACK;
    
    }
    

    GameNotificationEvent@ jinit_GameNotificationEvent(JObject@ anyType, string string_, JInteger@ seconds, BasicColor@ basicColor, JBoolean@ permanent)
    {
        this.jinit_AllBinaryEventObject(anyType);
        this.jfields_GameNotificationEvent();
        this.setString(string_);
        @this.seconds_GameNotificationEvent = seconds;
        this.setBasicColorP(basicColor);
        @this.removeable_GameNotificationEvent = permanent;
        return this;
    }
    

    string getString()
    {
        return this.string__GameNotificationEvent;
    }
    

    JInteger@ getSeconds()
    {
        return this.seconds_GameNotificationEvent;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_GameNotificationEvent;
    }
    

    JBoolean@ getPermanent()
    {
        return this.removeable_GameNotificationEvent;
    }
    

    void setString(string string_)
    {
        this.string__GameNotificationEvent = string_;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_GameNotificationEvent = basicColor;
    }
}

