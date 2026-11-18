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

class Line : JObjectBase
{
    GPoint@ p1;
    GPoint@ p2;
    double deltaX;
    double deltaY;
    

    Line@ jinit_Line(GPoint@ p1, GPoint@ p2)
    {
        @this.p1 = PointFactory::getInstance().ZERO_ZERO;
        @this.p2 = this.p1;
        this.setP1(p1);
        this.setP2(p2);
        return this;
    }
    

    double getGradient()
    {
        return this.getDeltaY() / this.getDeltaX();
    }
    

    void update()
    {
        this.deltaX = double(this.getP1().getX()) - double(this.getP2().getX());
        this.deltaY = double(this.getP1().getY()) - double(this.getP2().getY());
    }
    

    double getDeltaX()
    {
        return this.deltaX;
    }
    

    double getDeltaY()
    {
        return this.deltaY;
    }
    

    GPoint@ getP1()
    {
        return this.p1;
    }
    

    GPoint@ getP2()
    {
        return this.p2;
    }
    

    void setP1(GPoint@ p1)
    {
        @this.p1 = p1;
        this.update();
    }
    

    void setP2(GPoint@ p2)
    {
        @this.p2 = p2;
        this.update();
    }
}

