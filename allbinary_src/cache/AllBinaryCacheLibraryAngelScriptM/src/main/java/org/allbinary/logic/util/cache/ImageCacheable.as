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
// package org.allbinary.logic.util.cache

class ImageCacheable : JObjectBase
{
    string name;

    // Java field initializers run after the super constructor
    void jfields_ImageCacheable()
    {
    this.name = StringUtil::getInstance().EMPTY_STRING;
    }
    

    ImageCacheable@ jinit_ImageCacheable(string name, JObject@ anyType)
    {
        this.jfields_ImageCacheable();
        return this;
    }
    

    JObject@ getKey()
    {
        return jbox(this.name);
    }
    

    string toString()
    {
        return this.name;
    }
}

