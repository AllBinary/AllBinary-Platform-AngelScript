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
// package org.allbinary.graphics.color

class BasicColor : JObjectBase
{
    string name_BasicColor;
    int value_BasicColor;
    float redComponent_BasicColor;
    float greenComponent_BasicColor;
    float blueComponent_BasicColor;
    float alphaComponent_BasicColor;
    int16 red;
    int16 green;
    int16 blue;
    int16 alpha;
    

    BasicColor@ jinit_BasicColor(int alphaValue, int value, string name)
    {
        this.name_BasicColor = name;
        int tempValue = 0;
        BasicColorUtil@ basicColorUtil = BasicColorUtil::getInstance();
        if (basicColorUtil.isAlpha) {
            if (basicColorUtil.ffOpaque) {
                tempValue = alphaValue | value;
            } else {
                tempValue = 0x00000000 | value;
            }
        } else {
            tempValue = value;
        }
        int alphaInt = ((tempValue >>> 24) & 255);
        this.alpha = int16(alphaInt);
        this.alphaComponent_BasicColor = (float(alphaInt)) / 255.0f;
        int redInt = ((tempValue >>> 16) & 255);
        this.red = int16(redInt);
        this.redComponent_BasicColor = (float(redInt)) / 255.0f;
        int greenInt = ((tempValue >>> 8) & 255);
        this.green = int16(greenInt);
        this.greenComponent_BasicColor = (float(greenInt)) / 255.0f;
        int blueInt = ((tempValue) & 255);
        this.blue = int16(blueInt);
        this.blueComponent_BasicColor = (float(blueInt)) / 255.0f;
        this.value_BasicColor = tempValue;
        return this;
    }
    

    int intValue()
    {
        return this.value_BasicColor;
    }
    

    int toInt()
    {
        return this.value_BasicColor;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("BasicColor: ");
        stringBuffer.append("Alpha: ");
        stringBuffer.appendshort(this.alpha);
        stringBuffer.append(" Red: ");
        stringBuffer.appendshort(this.red);
        stringBuffer.append(" Green: ");
        stringBuffer.appendshort(this.green);
        stringBuffer.append(" Blue: ");
        stringBuffer.appendshort(this.blue);
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value_BasicColor);
        return stringBuffer.toString();
    }
    

    string getName()
    {
        return this.name_BasicColor;
    }
    

    float getRedComponent()
    {
        return this.redComponent_BasicColor;
    }
    

    float getGreenComponent()
    {
        return this.greenComponent_BasicColor;
    }
    

    float getBlueComponent()
    {
        return this.blueComponent_BasicColor;
    }
    

    float getAlphaComponent()
    {
        return this.alphaComponent_BasicColor;
    }
}

