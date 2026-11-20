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
    LayerPlacementType@ layerType_BasicLayerPlacement;
    int width_BasicLayerPlacement;
    int height_BasicLayerPlacement;
    

    BasicLayerPlacement@ jinit_BasicLayerPlacement(LayerPlacementType@ layerType, int width, int height)
    {
        @this.layerType_BasicLayerPlacement = layerType;
        this.width_BasicLayerPlacement = width;
        this.height_BasicLayerPlacement = height;
        return this;
    }
    

    int getWidth()
    {
        return this.width_BasicLayerPlacement;
    }
    

    int getHeight()
    {
        return this.height_BasicLayerPlacement;
    }
    

    LayerPlacementType@ getLayerType()
    {
        return this.layerType_BasicLayerPlacement;
    }
    

    void setLayerType(LayerPlacementType@ layerType)
    {
        @this.layerType_BasicLayerPlacement = layerType;
    }
}

