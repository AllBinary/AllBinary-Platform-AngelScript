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
// package org.allbinary.direction

class Direction : JObjectBase
{
    string name;
    string otherName;
    int value;
    int frameFactor;
    

    Direction@ jinit_Direction(string name, string otherName, int value, int frameFactor)
    {
        this.name = name;
        this.otherName = otherName;
        this.value = value;
        this.frameFactor = frameFactor;
        @Direction::directionArray[value] = this;
        return this;
    }
    

    int getValue()
    {
        return this.value;
    }
    

    int getFrameFactor()
    {
        return this.frameFactor;
    }
    

    string getOtherName()
    {
        return this.otherName;
    }
    

    string getName()
    {
        return this.name;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Direction: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Or: ");
        stringBuffer.append(this.getOtherName());
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
}

namespace Direction
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_directionArray = array<Direction@>(13);
    }

    Direction@[]@ jcell_directionArray;
    Direction@[]@ get_directionArray() property { jclinit(); return jcell_directionArray; }
    void set_directionArray(Direction@[]@ value) property { jclinit(); @jcell_directionArray = value; }
    

    Direction@ getInstance(int direction)
    {
        return Direction::directionArray[direction];
    }
}

