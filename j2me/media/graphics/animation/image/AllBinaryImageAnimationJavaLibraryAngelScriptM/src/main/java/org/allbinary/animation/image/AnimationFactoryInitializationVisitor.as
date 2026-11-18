/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.image

class AnimationFactoryInitializationVisitor : JObjectBase
{
    int width;
    int height;
    int dx;
    int dy;
    int originalDx;
    int originalDy;

    AnimationFactoryInitializationVisitor@ jinit_AnimationFactoryInitializationVisitor()
    {
        return this;
    }
    

    void visit()
    {
    }
    

    string toString()
    {
        CommonSeps@ commonSeps = CommonSeps::getInstance();
        CommonLabels@ commonLabels = CommonLabels::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(PositionStrings::getInstance().DX_LABEL).appendfloat(float(this.dx));
        stringBuffer.append(PositionStrings::getInstance().DY_LABEL).appendfloat(float(this.dy));
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.width);
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.height);
        return stringBuffer.toString();
    }
}

