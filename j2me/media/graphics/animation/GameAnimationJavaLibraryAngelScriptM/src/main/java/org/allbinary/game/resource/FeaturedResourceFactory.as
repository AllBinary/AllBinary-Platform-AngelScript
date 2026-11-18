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

class FeaturedResourceFactory : JObjectBase
{
    LogUtil@ logUtil;
    BasicArrayList@ list;
    CommonStrings@ commonStrings;
    string ANIMATION_FEATURES;
    string IMAGE_LABEL;
    string IMAGE_GRAPHICS_ARRAY;
    string IMAGE_GRAPHICS_ROTATION;
    string SPRITE_QUARTER;
    string SPRITE_FULL;
    string IS_LOADING_LEVEL_LABEL;
    string IS_FEATURE;
    string GAME_FEATURE_CONTROLLED;

    // Java field initializers run after the super constructor
    void jfields_FeaturedResourceFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    @this.commonStrings = CommonStrings::getInstance();
    this.ANIMATION_FEATURES = "Animation Features: Vector: ";
    this.IMAGE_LABEL = " Image: ";
    this.IMAGE_GRAPHICS_ARRAY = "Image Array: ";
    this.IMAGE_GRAPHICS_ROTATION = "Image Rotate: ";
    this.SPRITE_QUARTER = " Sprite Quarter: ";
    this.SPRITE_FULL = " Sprite Full: ";
    this.IS_LOADING_LEVEL_LABEL = " isLoadingLevel ";
    this.IS_FEATURE = " isFeature: ";
    this.GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: ";
    }
    

    FeaturedResourceFactory@ jinit_FeaturedResourceFactory()
    {
        this.jfields_FeaturedResourceFactory();
        return this;
    }
    

    void init(int level)
    {
        int size = this.list.size();
        for (int index = 0; index < size; index++) {
            GameFeatureControlledInterface@ featureInterface = cast<GameFeatureControlledInterface>(this.list.objectArray[index]);
            bool isLoadingLevel = featureInterface.isLoadingLevel(level);
            bool isFeature = featureInterface.isFeature();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.GAME_FEATURE_CONTROLLED).append(featureInterface.toString()).append(this.IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory::getInstance().getLevelString(level)).append(CommonSeps::getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(this.IS_FEATURE).appendboolean(isFeature).toString(), this, this.commonStrings.INIT);
            if (isLoadingLevel && isFeature) {
                featureInterface.init(level);
            }
        }
        Features@ features = Features::getInstance();
        GraphicsFeatureFactory@ graphicsFeatureFactory = GraphicsFeatureFactory::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.ANIMATION_FEATURES);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS));
        stringBuffer.append(this.IMAGE_LABEL);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(this.IMAGE_GRAPHICS_ARRAY);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.IMAGE_GRAPHICS_ROTATION);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.SPRITE_QUARTER);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS));
            stringBuffer.append(this.SPRITE_FULL);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS));
            this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        }
    }
    

    void clear()
    {
        this.list.clear();
    }
    

    void add(GameFeatureControlledInterface@ featureInterface)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(StringUtil::getInstance().toString(featureInterface)).toString(), this, this.commonStrings.ADD);
        this.list.add(featureInterface);
    }
    

    BasicArrayList@ getList()
    {
        return this.list;
    }
}

