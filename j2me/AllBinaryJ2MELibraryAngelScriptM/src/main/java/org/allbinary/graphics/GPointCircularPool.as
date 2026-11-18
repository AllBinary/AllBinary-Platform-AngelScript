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
// package org.allbinary.graphics

class GPointCircularPool : BaseCircularPool
{
    

    GPointCircularPool@ jinit_GPointCircularPool(int size)
    {
        this.jinit_BaseCircularPool();
        @this.circularIndexUtil = CircularIndexUtil::createInstance(size);
        @this.OBJECT_ARRAY = array<JObject@>(size);
        for (int index = size - 1; index >= 0; index--) {
            @this.OBJECT_ARRAY[index] = CustomGPoint::getInstance3(0, 0);
        }
        return this;
    }
}

