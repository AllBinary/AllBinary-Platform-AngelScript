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

class Rectangle : JObjectBase
{
    GPoint@ point_Rectangle;
    int width_Rectangle;
    int height_Rectangle;
    

    Rectangle@ jinit_Rectangle(GPoint@ point, int width, int height)
    {
        @this.point_Rectangle = point;
        this.width_Rectangle = width;
        this.height_Rectangle = height;
        return this;
    }
    

    GPoint@ getPoint()
    {
        return this.point_Rectangle;
    }
    

    void setPoint(GPoint@ point)
    {
        @this.point_Rectangle = point;
    }
    

    int getMaxX()
    {
        return this.point_Rectangle.getX() + this.width_Rectangle;
    }
    

    int getMaxY()
    {
        return this.point_Rectangle.getY() + this.height_Rectangle;
    }
    

    int getWidth()
    {
        return this.width_Rectangle;
    }
    

    void setWidth(int width)
    {
        this.width_Rectangle = width;
    }
    

    int getHeight()
    {
        return this.height_Rectangle;
    }
    

    void setHeight(int height)
    {
        this.height_Rectangle = height;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.getPoint().toString());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(CommonLabels::getInstance().WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(CommonLabels::getInstance().HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
        stringBuffer.append(" MaxX: ");
        stringBuffer.appendint(this.getMaxX());
        stringBuffer.append(" MaxY: ");
        stringBuffer.appendint(this.getMaxY());
        return stringBuffer.toString();
    }
}

