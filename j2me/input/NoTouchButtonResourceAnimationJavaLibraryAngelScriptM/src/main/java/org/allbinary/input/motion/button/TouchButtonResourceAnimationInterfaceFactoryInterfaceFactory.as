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

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory
{
    

    TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory@ jinit_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(string name)
    {
        this.jinit_BaseResourceAnimationInterfaceFactoryInterfaceFactory(name, StdUtil::getInstance().createHashtable(), StdUtil::getInstance().createHashtable(), StdUtil::getInstance().createHashtable());
        return this;
    }
    

    void init(int level)
    {
        this.initImageCache(ImageCacheFactory::getInstance(), level);
    }
    

    void initImageCache(ImageCache@ imageCache, int level)
    {
        if (this.isInitialized()) {
            return;
        }
        BaseResourceAnimationInterfaceFactoryInterfaceFactory::init(level);
    }
    

    bool isLoadingLevel(int level)
    {
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()) {
            return true;
        } else {
            return BaseResourceAnimationInterfaceFactoryInterfaceFactory::isLoadingLevel(level);
        }
        return false;
    }
    

    bool isFeature()
    {
        if (!Features::getInstance().isDefault(OpenGLFeatureFactory::getInstance().OPENGL)) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

namespace TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
{
    

    TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory@ createFactory()
    {
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory().jinit_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations");
    }
}

