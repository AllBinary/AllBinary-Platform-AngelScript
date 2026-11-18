/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.platform.opengles

class PlatformTextureBaseFactory : JObjectBase
{
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_PlatformTextureBaseFactory()
    {
    @this.commonStrings = CommonStrings::getInstance();
    }

    PlatformTextureBaseFactory@ jinit_PlatformTextureBaseFactory()
    {
        this.jfields_PlatformTextureBaseFactory();
        return this;
    }
    

    void load(GL10@ gl, int target, int level, Image@ image, int border, bool flip)
    {
    }
}

namespace PlatformTextureBaseFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY = PlatformTextureBaseFactory().jinit_PlatformTextureBaseFactory();
    }

    PlatformTextureBaseFactory@ jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY;
    PlatformTextureBaseFactory@ get_NULL_PLATFORM_TEXTURE_BASE_FACTORY() property { jclinit(); return jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY; }
    void set_NULL_PLATFORM_TEXTURE_BASE_FACTORY(PlatformTextureBaseFactory@ value) property { jclinit(); @jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY = value; }
}

