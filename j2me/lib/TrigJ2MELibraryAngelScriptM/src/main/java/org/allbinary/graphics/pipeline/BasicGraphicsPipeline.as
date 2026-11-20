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
// package org.allbinary.graphics.pipeline

class BasicGraphicsPipeline : JObjectBase
{
    BasicArrayList@ pointBasicArrayList;
    NoDecimalTrigTable@ noDecimalTrigTable_BasicGraphicsPipeline;

    // Java field initializers run after the super constructor
    void jfields_BasicGraphicsPipeline()
    {
    
    @this.noDecimalTrigTable_BasicGraphicsPipeline = NoDecimalTrigTable::getInstance();
    }
    

    BasicGraphicsPipeline@ jinit_BasicGraphicsPipeline(BasicArrayList@ points)
    {
        this.jfields_BasicGraphicsPipeline();
        @this.pointBasicArrayList = points;
        return this;
    }
    

    void setInitMatrix(BasicArrayList@ points)
    {
        @this.pointBasicArrayList = points;
    }
    

    void createMatrix()
    {
    }
    

    void translate(int x, int y)
    {
        BasicArrayList@ newBasicArrayList = BasicArrayListD().jinit_BasicArrayListD();
        int size = this.pointBasicArrayList.size();
        PointFactory@ pointFactory = PointFactory::getInstance();
        GPoint@ secondPoint;
        for (int index = 0; index < size; index++) {
            @secondPoint = cast<GPoint>(this.pointBasicArrayList.objectArray[index]);
            if (secondPoint.getX() != 1000) {
                newBasicArrayList.add(pointFactory.createXY(secondPoint.getX() + x, secondPoint.getY() + y));
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        @this.pointBasicArrayList = newBasicArrayList;
    }
    

    void rotateToAngle(Angle@ angle)
    {
        this.rotate(int(angle.getValue()));
    }
    

    void rotate(int angle)
    {
        BasicArrayList@ newBasicArrayList = BasicArrayListD().jinit_BasicArrayListD();
        GPoint@ secondPoint;
        int64 y = 0;
        int64 secondX = 0;
        int64 secondY = 0;
        GPoint@ point;
        PointFactory@ pointFactory = PointFactory::getInstance();
        int size = this.pointBasicArrayList.size();
        int64 sin = 0;
        int64 cos = 0;
        for (int index = 0; index < size; index++) {
            @secondPoint = cast<GPoint>(this.pointBasicArrayList.objectArray[index]);
            if (secondPoint.getX() != 1000) {
                sin = this.noDecimalTrigTable_BasicGraphicsPipeline.sin(angle);
                cos = this.noDecimalTrigTable_BasicGraphicsPipeline.cos(angle);
                y = int64(secondPoint.getY()) * sin;
                secondX = (int64(secondPoint.getX()) * cos) - y;
                secondY = (int64(secondPoint.getX()) * sin) + (int64(secondPoint.getY()) * cos);
                @point = pointFactory.createXY(int(secondX) / 10000, int(secondY) / 10000);
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        @this.pointBasicArrayList = newBasicArrayList;
    }
    

    void mirror(int width)
    {
        PointFactory@ pointFactory = PointFactory::getInstance();
        int halfWidth = (width >>> 1);
        BasicArrayList@ newBasicArrayList = BasicArrayListD().jinit_BasicArrayListD();
        GPoint@ secondPoint;
        int newX = 0;
        GPoint@ point;
        int size = this.pointBasicArrayList.size();
        for (int index = 0; index < size; index++) {
            @secondPoint = cast<GPoint>(this.pointBasicArrayList.objectArray[index]);
            if (secondPoint.getX() != 1000) {
                newX = 0;
                if (secondPoint.getX() > halfWidth) {
                    newX = halfWidth - (secondPoint.getX() - halfWidth);
                } else {
                    newX = halfWidth + (halfWidth - secondPoint.getX());
                }
                @point = pointFactory.createXY(newX, secondPoint.getY());
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        @this.pointBasicArrayList = newBasicArrayList;
    }
    

    BasicArrayList@ getMatrix()
    {
        return this.pointBasicArrayList;
    }
}

