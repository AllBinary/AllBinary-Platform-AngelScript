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

class ResourceLoadingLevelFactory : JObjectBase
{
    ResourceLoadingLevel@ LOAD_EARLY;
    ResourceLoadingLevel@ LOAD_TOUCH;
    ResourceLoadingLevel@ LOAD_GAME;
    ResourceLoadingLevel@ LEVEL;
    ResourceLoadingLevel@ MAX_LEVEL;
    ResourceLoadingLevel@ LOAD_ALL;
    ResourceLoadingLevel@[]@ RESOURCE_LOADING_LEVEL_ARRAY;

    // Java field initializers run after the super constructor
    void jfields_ResourceLoadingLevelFactory()
    {
    @this.LOAD_EARLY = ResourceLoadingLevel().jinit_ResourceLoadingLevel("Load Early", Integer::MAX_VALUE);
    @this.LOAD_TOUCH = ResourceLoadingLevel().jinit_ResourceLoadingLevel("Load Touch", Integer::MAX_VALUE - 1);
    @this.LOAD_GAME = ResourceLoadingLevel().jinit_ResourceLoadingLevel("Load Game", Integer::MAX_VALUE - 2);
    @this.LEVEL = ResourceLoadingLevel().jinit_ResourceLoadingLevel("Level", Integer::MAX_VALUE - 99);
    @this.MAX_LEVEL = ResourceLoadingLevel().jinit_ResourceLoadingLevel("Max Level", Integer::MAX_VALUE - 100);
    @this.LOAD_ALL = ResourceLoadingLevel().jinit_ResourceLoadingLevel("Load All", -1);
    @this.RESOURCE_LOADING_LEVEL_ARRAY = array<ResourceLoadingLevel@> = {this.LOAD_ALL, this.MAX_LEVEL, this.LEVEL, this.LOAD_GAME, this.LOAD_TOUCH, this.LOAD_EARLY};
    }

    ResourceLoadingLevelFactory@ jinit_ResourceLoadingLevelFactory()
    {
        this.jfields_ResourceLoadingLevelFactory();
        return this;
    }
    

    string getLevelString(int level)
    {
        for (int index = 0; index < int(this.RESOURCE_LOADING_LEVEL_ARRAY.length()); index++) {
            if (level == this.RESOURCE_LOADING_LEVEL_ARRAY[index].getLevel()) {
                return this.RESOURCE_LOADING_LEVEL_ARRAY[index].getName();
            }
        }
        return Integer::toString(level);
    }
}

namespace ResourceLoadingLevelFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ResourceLoadingLevelFactory().jinit_ResourceLoadingLevelFactory();
    }

    ResourceLoadingLevelFactory@ jcell_instance;
    ResourceLoadingLevelFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ResourceLoadingLevelFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ResourceLoadingLevelFactory@ getInstance()
    {
        return ResourceLoadingLevelFactory::instance;
    }
}

