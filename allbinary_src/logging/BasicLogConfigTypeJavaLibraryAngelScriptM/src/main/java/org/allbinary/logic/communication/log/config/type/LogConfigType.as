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
// package org.allbinary.logic.communication.log.config.type

class LogConfigType : JObjectBase
{
    string name;
    string description;
    

    LogConfigType@ jinit_LogConfigType(string name, string description)
    {
        this.name = name;
        this.description = description;
        return this;
    }
    

    string getName()
    {
        return this.name;
    }
    

    string getDescription()
    {
        return this.description;
    }
    

    void setName(string value)
    {
        this.name = value;
    }
    

    void setDescription(string value)
    {
        this.description = value;
    }
}

