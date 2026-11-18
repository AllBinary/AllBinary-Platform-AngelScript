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
    int width;
    int height;
    int[]@[]@ points;
    int totalFrames;
    

    VectorInfo@ jinit_VectorInfo(int width, int height, int[]@[]@ points, int totalFrames)
    {
        this.width = width;
        this.height = height;
        @this.points = points;
        this.totalFrames = totalFrames;
        return this;
    }
    

    int getWidth()
    {
        return this.width;
    }
    

    void setWidth(int width)
    {
        this.width = width;
    }
    

    int getHeight()
    {
        return this.height;
    }
    

    void setHeight(int height)
    {
        this.height = height;
    }
    

    int[]@[]@ getPoints()
    {
        return this.points;
    }
    

    void setPoints(int[]@[]@ points)
    {
        @this.points = points;
    }
    

    int getTotalFrames()
    {
        return this.totalFrames;
    }
    

    void setTotalFrames(int totalFrames)
    {
        this.totalFrames = totalFrames;
    }
}

