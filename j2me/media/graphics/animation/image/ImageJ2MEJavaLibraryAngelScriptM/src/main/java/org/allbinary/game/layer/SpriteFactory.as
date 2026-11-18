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
// package org.allbinary.game.layer

class SpriteFactory : JObjectBase, SpriteFactoryInterface
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_SpriteFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    SpriteFactory@ jinit_SpriteFactory()
    {
        this.jfields_SpriteFactory();
        return this;
    }
    

    Sprite@ createSprite(Image@ image, int frameWidth, int frameHeight)
    {
        return Sprite().jinit_Sprite(image, frameWidth, frameHeight);
    }
}

namespace SpriteFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = SpriteFactory().jinit_SpriteFactory();
    }

    SpriteFactory@ jcell_instance;
    SpriteFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(SpriteFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    SpriteFactory@ getInstance()
    {
        return SpriteFactory::instance;
    }
}

