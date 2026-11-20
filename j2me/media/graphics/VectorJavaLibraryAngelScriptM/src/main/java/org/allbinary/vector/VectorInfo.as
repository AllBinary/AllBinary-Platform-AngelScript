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
// package org.allbinary.vector

class VectorInfo : JObjectBase
{
    int width_VectorInfo;
    int height_VectorInfo;
    int[]@[]@ points_VectorInfo;
    int totalFrames_VectorInfo;
    

    VectorInfo@ jinit_VectorInfo(int width, int height, int[]@[]@ points, int totalFrames)
    {
        this.width_VectorInfo = width;
        this.height_VectorInfo = height;
        @this.points_VectorInfo = points;
        this.totalFrames_VectorInfo = totalFrames;
        return this;
    }
    

    int getWidth()
    {
        return this.width_VectorInfo;
    }
    

    void setWidth(int width)
    {
        this.width_VectorInfo = width;
    }
    

    int getHeight()
    {
        return this.height_VectorInfo;
    }
    

    void setHeight(int height)
    {
        this.height_VectorInfo = height;
    }
    

    int[]@[]@ getPoints()
    {
        return this.points_VectorInfo;
    }
    

    void setPoints(int[]@[]@ points)
    {
        @this.points_VectorInfo = points;
    }
    

    int getTotalFrames()
    {
        return this.totalFrames_VectorInfo;
    }
    

    void setTotalFrames(int totalFrames)
    {
        this.totalFrames_VectorInfo = totalFrames;
    }
}

