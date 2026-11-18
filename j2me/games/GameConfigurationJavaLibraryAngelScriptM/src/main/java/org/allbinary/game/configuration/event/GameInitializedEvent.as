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

class GameInitializedEvent : AllBinaryEventObject
{
    ResourceLoadingLevel@ resourceLoadingLevel_GameInitializedEvent;
    int level_GameInitializedEvent;

    // Java field initializers run after the super constructor
    void jfields_GameInitializedEvent()
    {
    @this.resourceLoadingLevel_GameInitializedEvent = ResourceLoadingLevelFactory::getInstance().LEVEL;
    
    }
    

    GameInitializedEvent@ jinit_GameInitializedEvent(JObject@ anyType)
    {
        this.jinit_AllBinaryEventObject(anyType);
        this.jfields_GameInitializedEvent();
        return this;
    }
    

    void setLevel(int level)
    {
        this.level_GameInitializedEvent = level;
        @this.resourceLoadingLevel_GameInitializedEvent = ResourceLoadingLevelFactory::getInstance().LEVEL;
    }
    

    int getLevel()
    {
        return this.level_GameInitializedEvent;
    }
    

    void setResourceLoadingLevel(ResourceLoadingLevel@ resourceLoadingLevel)
    {
        @this.resourceLoadingLevel_GameInitializedEvent = resourceLoadingLevel;
        this.level_GameInitializedEvent = this.resourceLoadingLevel_GameInitializedEvent.getLevel();
    }
    

    ResourceLoadingLevel@ getResourceLoadingLevel()
    {
        return this.resourceLoadingLevel_GameInitializedEvent;
    }
}

