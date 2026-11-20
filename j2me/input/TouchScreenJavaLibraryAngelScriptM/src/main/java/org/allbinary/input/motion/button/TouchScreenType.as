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
// package org.allbinary.input.motion.button

class TouchScreenType : JObjectBase
{
    string name_TouchScreenType;
    

    TouchScreenType@ jinit_TouchScreenType(string name)
    {
        this.name_TouchScreenType = name;
        return this;
    }
    

    string getName()
    {
        return this.name_TouchScreenType;
    }
    

    string toString()
    {
        return this.getName();
    }
}

