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
// package org.allbinary.animation.resource

class BaseResourceAnimationInterfaceFactoryInterfaceFactory : JObjectBase, FeatureResourceAnimationInterfaceFactoryInterface
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings;
    ABHashtable@ hashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    ABHashtable@ rectangleHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    ABHashtable@ rectangleArrayOfArraysHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    string name_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    bool initialized_BaseResourceAnimationInterfaceFactoryInterfaceFactory;

    // Java field initializers run after the super constructor
    void jfields_BaseResourceAnimationInterfaceFactoryInterfaceFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings = CommonStrings::getInstance();
    
    
    
    
    
    }
    

    BaseResourceAnimationInterfaceFactoryInterfaceFactory@ jinit_BaseResourceAnimationInterfaceFactoryInterfaceFactory(string name, ABHashtable@ hashtable, ABHashtable@ rectangleHashtable, ABHashtable@ rectangleArrayHashtable)
    {
        this.jfields_BaseResourceAnimationInterfaceFactoryInterfaceFactory();
        @this.hashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory = hashtable;
        @this.rectangleHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory = rectangleHashtable;
        @this.rectangleArrayOfArraysHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory = rectangleArrayHashtable;
        this.name_BaseResourceAnimationInterfaceFactoryInterfaceFactory = name;
        return this;
    }
    

    string getName()
    {
        return this.name_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    }
    

    void init(int level)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        this.logUtil.putF(StringMaker().jinit_StringMaker().append("Available List of Animations: ").append(this.hashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.toString()).toString(), this, commonStrings.INIT);
        this.setInitialized(true);
    }
    

    void initImageCache(ImageCache@ imageCache, int level)
    {
    }
    

    void add(string resource, BasicAnimationInterfaceFactoryInterface@ animationInterfaceFactoryInterface)
    {
        if (this.hashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.containsKey(jbox(resource))) {
            jthrow(Exception().jinit_Exception(StringMaker().jinit_StringMaker().append("Resource Already Created: ").append(resource).toString()));
        }
        this.hashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.put(resource, animationInterfaceFactoryInterface);
    }
    

    BasicAnimationInterfaceFactoryInterface@ getBasicAnimationInterfaceFactoryInstance(string resource)
    {
        JObject@ basicAnimationInterfaceFactoryInterfaceCanBeNull = this.hashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.get(resource);
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull is null) {
            return NullAnimationFactory::NULL_NOT_FOR_USE_ANIMATION_FACTORY;
        }
        return cast<BasicAnimationInterfaceFactoryInterface>(basicAnimationInterfaceFactoryInterfaceCanBeNull);
    }
    

    Rectangle@ getRectangle(string resource)
    {
        JObject@ rectangleCanBeNull = this.rectangleHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.get(resource);
        if (rectangleCanBeNull is null) {
            return RectangleFactory::SINGLETON;
        }
        return cast<Rectangle>(rectangleCanBeNull);
    }
    

    void addRectangle(string resource, Rectangle@ rectangle)
    {
        this.rectangleHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.put(resource, rectangle);
    }
    

    Rectangle@[]@[]@ getRectangleArrayOfArrays(string resource)
    {
        JObject@ valueCanBeNull = this.rectangleArrayOfArraysHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.get(resource);
        if (valueCanBeNull !is null) {
            Rectangle@[]@[]@ rectangleArrayOfArrays = cast<array<Rectangle@[]@>>(jrefOf(valueCanBeNull));
            return rectangleArrayOfArrays;
        } else {
            return RectangleFactory::ARRAY_OF_ARRAYS;
        }
        return null;
    }
    

    void addRectangleArrayOfArrays(string resource, Rectangle@[]@[]@ rectangleArrayOfArrays)
    {
        this.rectangleArrayOfArraysHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory.put(resource, jboxRef(ref(@rectangleArrayOfArrays)));
    }
    

    bool isFeature()
    {
        return false;
    }
    

    bool isLoadingLevel(int level)
    {
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(jClassName(this)).append(CommonSeps::getInstance().SEMICOLON).append(CommonSeps::getInstance().SPACE).append(this.name_BaseResourceAnimationInterfaceFactoryInterfaceFactory).toString();
    }
    

    ABHashtable@ getHashtable()
    {
        return this.hashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    }
    

    ABHashtable@ getRectangleHashtable()
    {
        return this.rectangleHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    }
    

    ABHashtable@ getRectangleArrayOfArraysHashtable()
    {
        return this.rectangleArrayOfArraysHashtable_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    }
    

    void setInitialized(bool initialized)
    {
        this.initialized_BaseResourceAnimationInterfaceFactoryInterfaceFactory = initialized;
    }
    

    bool isInitialized()
    {
        return this.initialized_BaseResourceAnimationInterfaceFactoryInterfaceFactory;
    }
}

