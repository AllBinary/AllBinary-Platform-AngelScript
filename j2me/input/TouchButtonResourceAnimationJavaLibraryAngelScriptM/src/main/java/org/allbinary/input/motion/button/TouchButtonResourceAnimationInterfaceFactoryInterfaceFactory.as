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
        int portion = 140;
        string loadingString = StringMaker().jinit_StringMaker().append(this.toString()).append(" Loading: ").toString();
        int index = 0;
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        TouchButtonResource@ touchButtonBlankResource = TouchButtonBlankResource::getInstance();
        TouchButtonResource@ touchButtonGenericActionResource = TouchButtonGenericActionResource::getInstance();
        TouchButtonResource@ touchButtonStartResource = TouchButtonStartResource::getInstance();
        TouchButtonResource@ touchButtonUpResource = TouchButtonUpResource::getInstance();
        TouchButtonResource@ touchButtonDownResource = TouchButtonDownResource::getInstance();
        TouchButtonResource@ touchButtonTurnLeftResource = TouchButtonTurnLeftResource::getInstance();
        TouchButtonResource@ touchButtonTurnRightResource = TouchButtonTurnRightResource::getInstance();
        TouchButtonResource@ touchButtonStrafeLeftResource = TouchButtonStrafeLeftResource::getInstance();
        TouchButtonResource@ touchButtonStrafeRightResource = TouchButtonStrafeRightResource::getInstance();
        Image@ touchButtonBlankResourceImage = imageCache.getWithKey(jbox(touchButtonBlankResource.RESOURCE));
        Image@ touchButtonGenericActionResourceImage = imageCache.getWithKey(jbox(touchButtonGenericActionResource.RESOURCE));
        Image@ touchButtonStartResourceImage = imageCache.getWithKey(jbox(touchButtonStartResource.RESOURCE));
        Image@ touchButtonUpResourceImage = imageCache.getWithKey(jbox(touchButtonUpResource.RESOURCE));
        Image@ touchButtonDownResourceImage = imageCache.getWithKey(jbox(touchButtonDownResource.RESOURCE));
        Image@ touchButtonTurnLeftResourceImage = imageCache.getWithKey(jbox(touchButtonTurnLeftResource.RESOURCE));
        Image@ touchButtonTurnRightResourceImage = imageCache.getWithKey(jbox(touchButtonTurnRightResource.RESOURCE));
        Image@ touchButtonStrafeLeftResourceImage = imageCache.getWithKey(jbox(touchButtonStrafeLeftResource.RESOURCE));
        Image@ touchButtonStrafeRightResourceImage = imageCache.getWithKey(jbox(touchButtonStrafeRightResource.RESOURCE));
        NullAnimationFactory@ nullAnimationFactory = NullAnimationFactory::getFactoryInstance();
        if (OperatingSystemFactory::getInstance().getOperatingSystemInstance().isOverScan()) {
            imageCache.getWithKey(jbox(TouchButtonStartResource::getInstance().HINT));
        }
        progressCanvas.addPortion(portion, loadingString, index++);
        ImageCompleteUtil@ imageCompleteUtil = ImageCompleteUtil::getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE);
        this.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonBlankResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE);
        this.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonGenericActionResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE);
        this.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory::getInstance()));
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE);
        this.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonUpResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE);
        this.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonDownResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE);
        this.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE);
        this.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonTurnRightResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE);
        this.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE);
        this.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory::getInstance()));
        this.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory);
        if (OperatingSystemFactory::getInstance().getOperatingSystemInstance().isOverScan()) {
            Image@ touchButtonStartHintResource = imageCache.getWithKey(jbox(TouchButtonStartResource::getInstance().HINT));
            this.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory::createFactory(touchButtonStartHintResource, AnimationBehaviorFactory::getInstance()));
        } else {
            this.add(touchButtonStartResource.HINT, nullAnimationFactory);
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

