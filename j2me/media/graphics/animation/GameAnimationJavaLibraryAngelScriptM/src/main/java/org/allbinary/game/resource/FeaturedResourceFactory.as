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
    BasicArrayList@ list_FeaturedResourceFactory;
    CommonStrings@ commonStrings_FeaturedResourceFactory;
    string ANIMATION_FEATURES_FeaturedResourceFactory;
    string IMAGE_LABEL_FeaturedResourceFactory;
    string IMAGE_GRAPHICS_ARRAY_FeaturedResourceFactory;
    string IMAGE_GRAPHICS_ROTATION_FeaturedResourceFactory;
    string SPRITE_QUARTER_FeaturedResourceFactory;
    string SPRITE_FULL_FeaturedResourceFactory;
    string IS_LOADING_LEVEL_LABEL_FeaturedResourceFactory;
    string IS_FEATURE_FeaturedResourceFactory;
    string GAME_FEATURE_CONTROLLED_FeaturedResourceFactory;

    // Java field initializers run after the super constructor
    void jfields_FeaturedResourceFactory()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.list_FeaturedResourceFactory = BasicArrayListD().jinit_BasicArrayListD();
    @this.commonStrings_FeaturedResourceFactory = CommonStrings::getInstance();
    this.ANIMATION_FEATURES_FeaturedResourceFactory = "Animation Features: Vector: ";
    this.IMAGE_LABEL_FeaturedResourceFactory = " Image: ";
    this.IMAGE_GRAPHICS_ARRAY_FeaturedResourceFactory = "Image Array: ";
    this.IMAGE_GRAPHICS_ROTATION_FeaturedResourceFactory = "Image Rotate: ";
    this.SPRITE_QUARTER_FeaturedResourceFactory = " Sprite Quarter: ";
    this.SPRITE_FULL_FeaturedResourceFactory = " Sprite Full: ";
    this.IS_LOADING_LEVEL_LABEL_FeaturedResourceFactory = " isLoadingLevel ";
    this.IS_FEATURE_FeaturedResourceFactory = " isFeature: ";
    this.GAME_FEATURE_CONTROLLED_FeaturedResourceFactory = "GameFeatureControlledInterface: ";
    }
    

    FeaturedResourceFactory@ jinit_FeaturedResourceFactory()
    {
        this.jfields_FeaturedResourceFactory();
        return this;
    }
    

    void init(int level)
    {
        int size = this.list_FeaturedResourceFactory.size();
        for (int index = 0; index < size; index++) {
            GameFeatureControlledInterface@ featureInterface = cast<GameFeatureControlledInterface>(this.list_FeaturedResourceFactory.objectArray[index]);
            bool isLoadingLevel = featureInterface.isLoadingLevel(level);
            bool isFeature = featureInterface.isFeature();
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(this.GAME_FEATURE_CONTROLLED_FeaturedResourceFactory).append(featureInterface.toString()).append(this.IS_LOADING_LEVEL_LABEL_FeaturedResourceFactory).append(ResourceLoadingLevelFactory::getInstance().getLevelString(level)).append(CommonSeps::getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(this.IS_FEATURE_FeaturedResourceFactory).appendboolean(isFeature).toString(), this, this.commonStrings_FeaturedResourceFactory.INIT);
            if (isLoadingLevel && isFeature) {
                featureInterface.init(level);
            }
        }
        Features@ features = Features::getInstance();
        GraphicsFeatureFactory@ graphicsFeatureFactory = GraphicsFeatureFactory::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(this.ANIMATION_FEATURES_FeaturedResourceFactory);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS));
        stringBuffer.append(this.IMAGE_LABEL_FeaturedResourceFactory);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings_FeaturedResourceFactory.INIT);
        if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(this.IMAGE_GRAPHICS_ARRAY_FeaturedResourceFactory);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.IMAGE_GRAPHICS_ROTATION_FeaturedResourceFactory);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.SPRITE_QUARTER_FeaturedResourceFactory);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS));
            stringBuffer.append(this.SPRITE_FULL_FeaturedResourceFactory);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS));
            this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings_FeaturedResourceFactory.INIT);
        }
    }
    

    void clear()
    {
        this.list_FeaturedResourceFactory.clear();
    }
    

    void add(GameFeatureControlledInterface@ featureInterface)
    {
        this.logUtil.putF(StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().START_LABEL).append(StringUtil::getInstance().toString(featureInterface)).toString(), this, this.commonStrings_FeaturedResourceFactory.ADD);
        this.list_FeaturedResourceFactory.add(featureInterface);
    }
    

    BasicArrayList@ getList()
    {
        return this.list_FeaturedResourceFactory;
    }
}

