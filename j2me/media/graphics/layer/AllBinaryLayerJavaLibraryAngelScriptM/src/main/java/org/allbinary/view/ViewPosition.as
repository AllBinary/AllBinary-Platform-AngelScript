/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.view

class ViewPosition : ViewPositionBase
{
    AllBinaryLayer@ allbinaryLayer_ViewPosition;

    // Java field initializers run after the super constructor
    void jfields_ViewPosition()
    {
    @this.allbinaryLayer_ViewPosition = AllBinaryLayer::NULL_ALLBINARY_LAYER;
    }
    

    ViewPosition@ jinit_ViewPosition(int x, int y, int z)
    {
        this.jinit_ViewPositionBase(x, y, z);
        this.jfields_ViewPosition();
        return this;
    }
    

    int getX()
    {
        return this.allbinaryLayer_ViewPosition.getXP();
    }
    

    int getY()
    {
        return this.allbinaryLayer_ViewPosition.getYP();
    }
    

    int getZ()
    {
        return this.allbinaryLayer_ViewPosition.getZP();
    }
    

    int getX2()
    {
        return this.getX() + this.allbinaryLayer_ViewPosition.getWidth();
    }
    

    int getY2()
    {
        return this.getY() + this.allbinaryLayer_ViewPosition.getHeight();
    }
    

    int getZ2()
    {
        return int((int64(this.getZ()) + this.allbinaryLayer_ViewPosition.getDepth()));
    }
    

    void setAllbinaryLayer(JObject@ allbinaryLayer)
    {
        @this.allbinaryLayer_ViewPosition = cast<AllBinaryLayer>(allbinaryLayer);
    }
}

namespace ViewPosition
{
    

    ViewPosition@ getInstanceD()
    {
        return ViewPosition().jinit_ViewPosition(0, 0, 0);
    }
}

