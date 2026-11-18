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
// package org.allbinary.layer.event

class ScrollMapEvent : AllBinaryEventObject
{
    int dx_ScrollMapEvent;
    int dy_ScrollMapEvent;
    

    ScrollMapEvent@ jinit_ScrollMapEvent(JObject@ anyType)
    {
        this.jinit_AllBinaryEventObject(anyType);
        return this;
    }
    

    void setDx(int dx)
    {
        this.dx_ScrollMapEvent = dx;
    }
    

    int getDx()
    {
        return this.dx_ScrollMapEvent;
    }
    

    void setDy(int dy)
    {
        this.dy_ScrollMapEvent = dy;
    }
    

    int getDy()
    {
        return this.dy_ScrollMapEvent;
    }
    

    void setDxDy(int dx, int dy)
    {
        this.dx_ScrollMapEvent = dx;
        this.dy_ScrollMapEvent = dy;
    }
}

