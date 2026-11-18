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
// package org.allbinary.game.terrain

class TerrainEvent : AllBinaryEventObject
{
    BasicTerrainInfo@ basicTerrainInfo_TerrainEvent;

    // Java field initializers run after the super constructor
    void jfields_TerrainEvent()
    {
    @this.basicTerrainInfo_TerrainEvent = BasicTerrainInfo::NULL_BASIC_TERRAIN_INFO;
    }
    

    TerrainEvent@ jinit_TerrainEvent(JObject@ basicTerrainInfo)
    {
        this.jinit_AllBinaryEventObject(basicTerrainInfo);
        this.jfields_TerrainEvent();
        this.setBasicTerrainInfo(this.basicTerrainInfo_TerrainEvent);
        return this;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("TerrainEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.basicTerrainInfo_TerrainEvent.toString());
        return stringBuffer.toString();
    }
    

    BasicTerrainInfo@ getBasicTerrainInfo()
    {
        return this.basicTerrainInfo_TerrainEvent;
    }
    

    void setBasicTerrainInfo(BasicTerrainInfo@ basicTerrainInfo)
    {
        @this.basicTerrainInfo_TerrainEvent = basicTerrainInfo;
    }
    

    void setBasicTerrainInfoForCircularStaticPool(BasicTerrainInfo@ basicTerrainInfo)
    {
        @this.basicTerrainInfo_TerrainEvent = basicTerrainInfo;
    }
}

