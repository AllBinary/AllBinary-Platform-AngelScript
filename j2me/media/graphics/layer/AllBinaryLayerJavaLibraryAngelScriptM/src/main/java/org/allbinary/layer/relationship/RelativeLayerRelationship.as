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
// package org.allbinary.layer.relationship

class RelativeLayerRelationship : RelativeRelationship
{
    AllBinaryLayer@ layer_RelativeLayerRelationship;

    // Java field initializers run after the super constructor
    void jfields_RelativeLayerRelationship()
    {
    @this.layer_RelativeLayerRelationship = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    }
    

    RelativeLayerRelationship@ jinit_RelativeLayerRelationship(AllBinaryLayer@ layer, GPoint@ point, BasicArrayList@ typesAllowedList)
    {
        this.jinit_RelativeRelationship(point, typesAllowedList);
        this.jfields_RelativeLayerRelationship();
        @this.layer_RelativeLayerRelationship = layer;
        return this;
    }
    

    int getX()
    {
        return this.layer_RelativeLayerRelationship.getXP() + RelativeRelationship::getX();
    }
    

    int getY()
    {
        return this.layer_RelativeLayerRelationship.getYP() + RelativeRelationship::getY();
    }
    

    int getZ()
    {
        return this.layer_RelativeLayerRelationship.getZP() + RelativeRelationship::getZ();
    }
}

