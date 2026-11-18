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
// package org.allbinary.game.resource

class ResourceLoadingLevel : JObjectBase
{
    string name;
    int level;
    

    ResourceLoadingLevel@ jinit_ResourceLoadingLevel(string name, int level)
    {
        this.name = name;
        this.level = level;
        return this;
    }
    

    int getLevel()
    {
        return this.level;
    }
    

    string getName()
    {
        return this.name;
    }
}

