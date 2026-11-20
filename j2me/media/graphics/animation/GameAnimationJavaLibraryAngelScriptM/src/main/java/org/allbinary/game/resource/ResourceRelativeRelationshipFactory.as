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

class ResourceRelativeRelationshipFactory : JObjectBase, ResourceRelativeRelationshipFactoryInterface
{
    BasicArrayListUtil@ basicArrayListUtil_ResourceRelativeRelationshipFactory;
    ABHashtable@ hashtable_ResourceRelativeRelationshipFactory;
    bool initialized_ResourceRelativeRelationshipFactory;

    // Java field initializers run after the super constructor
    void jfields_ResourceRelativeRelationshipFactory()
    {
    @this.basicArrayListUtil_ResourceRelativeRelationshipFactory = BasicArrayListUtil::getInstance();
    @this.hashtable_ResourceRelativeRelationshipFactory = StdUtil::getInstance().createHashtable();
    
    }

    ResourceRelativeRelationshipFactory@ jinit_ResourceRelativeRelationshipFactory()
    {
        this.jfields_ResourceRelativeRelationshipFactory();
        return this;
    }
    

    void init(int level)
    {
        this.setInitialized(true);
    }
    

    BasicArrayList@ getResourceRelativeRelationshipList(string resource)
    {
        JObject@ listCanBeNull = this.hashtable_ResourceRelativeRelationshipFactory.get(resource);
        if (listCanBeNull is null) {
            return this.basicArrayListUtil_ResourceRelativeRelationshipFactory.getImmutableInstance();
        }
        return cast<BasicArrayList>(listCanBeNull);
    }
    

    void addResourceRelativeRelationship(string resource, RelativeRelationship@ hardPoint)
    {
        BasicArrayList@ list = this.getResourceRelativeRelationshipList(resource);
        if (list is this.basicArrayListUtil_ResourceRelativeRelationshipFactory.getImmutableInstance()) {
            @list = BasicArrayListD().jinit_BasicArrayListD();
        }
        list.add(hardPoint);
        this.hashtable_ResourceRelativeRelationshipFactory.put(resource, list);
    }
    

    bool isLoadingLevel(int level)
    {
        return false;
    }
    

    bool isFeature()
    {
        return false;
    }
    

    void setInitialized(bool initialized)
    {
        this.initialized_ResourceRelativeRelationshipFactory = initialized;
    }
    

    bool isInitialized()
    {
        return this.initialized_ResourceRelativeRelationshipFactory;
    }
}

