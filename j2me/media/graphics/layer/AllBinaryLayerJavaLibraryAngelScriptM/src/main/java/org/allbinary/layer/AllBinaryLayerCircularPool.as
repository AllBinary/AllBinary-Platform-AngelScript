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
// package org.allbinary.layer

class AllBinaryLayerCircularPool : BaseCircularPool
{
    

    AllBinaryLayerCircularPool@ jinit_AllBinaryLayerCircularPool()
    {
        this.jinit_BaseCircularPool();
        return this;
    }
    

    void initAllBinaryLayerCircularPool(AllBinaryLayerFactoryInterface@ allbinaryLayerFactoryInterface, int total)
    {
        @this.circularIndexUtil = CircularIndexUtil::createInstance(total);
        @this.OBJECT_ARRAY = array<JObject@>(total);
        for (int localIndex = 0; localIndex < total; localIndex++) {
            @this.OBJECT_ARRAY[localIndex] = allbinaryLayerFactoryInterface.getInstance();
        }
    }
}

