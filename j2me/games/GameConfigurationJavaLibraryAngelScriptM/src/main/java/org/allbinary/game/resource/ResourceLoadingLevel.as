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
    string name_ResourceLoadingLevel;
    int level_ResourceLoadingLevel;
    

    ResourceLoadingLevel@ jinit_ResourceLoadingLevel(string name, int level)
    {
        this.name_ResourceLoadingLevel = name;
        this.level_ResourceLoadingLevel = level;
        return this;
    }
    

    int getLevel()
    {
        return this.level_ResourceLoadingLevel;
    }
    

    string getName()
    {
        return this.name_ResourceLoadingLevel;
    }
}

