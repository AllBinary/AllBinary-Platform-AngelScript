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
    GPoint@ p1_Line;
    GPoint@ p2_Line;
    double deltaX_Line;
    double deltaY_Line;
    

    Line@ jinit_Line(GPoint@ p1, GPoint@ p2)
    {
        @this.p1_Line = PointFactory::getInstance().ZERO_ZERO;
        @this.p2_Line = this.p1_Line;
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
        this.deltaX_Line = double(this.getP1().getX()) - double(this.getP2().getX());
        this.deltaY_Line = double(this.getP1().getY()) - double(this.getP2().getY());
    }
    

    double getDeltaX()
    {
        return this.deltaX_Line;
    }
    

    double getDeltaY()
    {
        return this.deltaY_Line;
    }
    

    GPoint@ getP1()
    {
        return this.p1_Line;
    }
    

    GPoint@ getP2()
    {
        return this.p2_Line;
    }
    

    void setP1(GPoint@ p1)
    {
        @this.p1_Line = p1;
        this.update();
    }
    

    void setP2(GPoint@ p2)
    {
        @this.p2_Line = p2;
        this.update();
    }
}

