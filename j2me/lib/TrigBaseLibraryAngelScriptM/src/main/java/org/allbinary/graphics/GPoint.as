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

class GPoint : JObjectBase
{
    int x;
    int y;
    int z;
    

    GPoint@ jinit_GPoint(int x, int y, int z)
    {
        this.x = x;
        this.y = y;
        this.z = z;
        return this;
    }
    

    int getX()
    {
        return this.x;
    }
    

    int getY()
    {
        return this.y;
    }
    

    int getZ()
    {
        return this.z;
    }
    

    int getRawX()
    {
        return this.x;
    }
    

    int getRawY()
    {
        return this.y;
    }
    

    int getRawZ()
    {
        return this.z;
    }
    

    string toString()
    {
        return GPoint::toStringStatic(this.getX(), this.getY(), this.getZ());
    }
}

namespace GPoint
{
    const string POINT_LABEL = "Point: ";
    

    GPoint@ getInstance(GPoint@ point)
    {
        return GPoint().jinit_GPoint(point.getX(), point.getY(), point.getZ());
    }
    

    string toStringStatic(int x, int y, int z)
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        PositionStrings@ positionStrings = PositionStrings::getInstance();
        stringBuffer.append(GPoint::POINT_LABEL);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(x);
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(y);
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(z);
        return stringBuffer.toString();
    }
}

