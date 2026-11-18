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
// package org.allbinary.logic.math.vector

class Vertex : JObjectBase
{
    BasicDecimal@ x;
    BasicDecimal@ y;
    BasicDecimal@ z;

    // Java field initializers run after the super constructor
    void jfields_Vertex()
    {
    @this.x = BasicDecimal().jinit_BasicDecimal(0);
    @this.y = BasicDecimal().jinit_BasicDecimal(0);
    @this.z = BasicDecimal().jinit_BasicDecimal(0);
    }
    

    Vertex@ jinit_Vertex()
    {
        this.jfields_Vertex();
        return this;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        PositionStrings@ positionStrings = PositionStrings::getInstance();
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.append(this.x.toString());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.append(this.y.toString());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.append(this.z.toString());
        return stringBuffer.toString();
    }
}

