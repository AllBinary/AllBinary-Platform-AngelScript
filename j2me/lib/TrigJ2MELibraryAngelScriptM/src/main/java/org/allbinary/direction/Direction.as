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
    string name_Direction;
    string otherName_Direction;
    int value_Direction;
    int frameFactor_Direction;
    

    Direction@ jinit_Direction(string name, string otherName, int value, int frameFactor)
    {
        this.name_Direction = name;
        this.otherName_Direction = otherName;
        this.value_Direction = value;
        this.frameFactor_Direction = frameFactor;
        @Direction::directionArray[value] = this;
        return this;
    }
    

    int getValue()
    {
        return this.value_Direction;
    }
    

    int getFrameFactor()
    {
        return this.frameFactor_Direction;
    }
    

    string getOtherName()
    {
        return this.otherName_Direction;
    }
    

    string getName()
    {
        return this.name_Direction;
    }
    

    string toString()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append("Direction: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Or: ");
        stringBuffer.append(this.getOtherName());
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value_Direction);
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

