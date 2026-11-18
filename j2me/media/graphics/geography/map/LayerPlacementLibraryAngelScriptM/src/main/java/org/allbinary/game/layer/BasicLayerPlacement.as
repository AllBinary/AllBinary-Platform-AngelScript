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
// package org.allbinary.game.layer

class BasicLayerPlacement : JObjectBase
{
    LayerPlacementType@ layerType;
    int width;
    int height;
    

    BasicLayerPlacement@ jinit_BasicLayerPlacement(LayerPlacementType@ layerType, int width, int height)
    {
        @this.layerType = layerType;
        this.width = width;
        this.height = height;
        return this;
    }
    

    int getWidth()
    {
        return this.width;
    }
    

    int getHeight()
    {
        return this.height;
    }
    

    LayerPlacementType@ getLayerType()
    {
        return this.layerType;
    }
    

    void setLayerType(LayerPlacementType@ layerType)
    {
        @this.layerType = layerType;
    }
}

