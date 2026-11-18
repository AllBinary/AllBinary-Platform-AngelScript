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
    string name;
    int value;
    float redComponent;
    float greenComponent;
    float blueComponent;
    float alphaComponent;
    int16 red;
    int16 green;
    int16 blue;
    int16 alpha;
    

    BasicColor@ jinit_BasicColor(int alphaValue, int value, string name)
    {
        this.name = name;
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
        this.alphaComponent = (float(alphaInt)) / 255.0f;
        int redInt = ((tempValue >>> 16) & 255);
        this.red = int16(redInt);
        this.redComponent = (float(redInt)) / 255.0f;
        int greenInt = ((tempValue >>> 8) & 255);
        this.green = int16(greenInt);
        this.greenComponent = (float(greenInt)) / 255.0f;
        int blueInt = ((tempValue) & 255);
        this.blue = int16(blueInt);
        this.blueComponent = (float(blueInt)) / 255.0f;
        this.value = tempValue;
        return this;
    }
    

    int intValue()
    {
        return this.value;
    }
    

    int toInt()
    {
        return this.value;
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
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
    

    string getName()
    {
        return this.name;
    }
    

    float getRedComponent()
    {
        return this.redComponent;
    }
    

    float getGreenComponent()
    {
        return this.greenComponent;
    }
    

    float getBlueComponent()
    {
        return this.blueComponent;
    }
    

    float getAlphaComponent()
    {
        return this.alphaComponent;
    }
}

