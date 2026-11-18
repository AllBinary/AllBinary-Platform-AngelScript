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
// package org.allbinary.game.layer.resources

class OnDemandLoader : JObjectBase
{
    OnDemandResourcesFactory@ onDemandResourcesFactory;
    GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory@ gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
    BaseResourceAnimationInterfaceFactoryInterfaceFactory@ resourceAnimationInterfaceFactoryInterfaceFactory;
    

    OnDemandLoader@ jinit_OnDemandLoader(OnDemandResourcesFactory@ onDemandResourcesFactory, GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory@ gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, BaseResourceAnimationInterfaceFactoryInterfaceFactory@ resourceAnimationInterfaceFactoryInterfaceFactory)
    {
        @this.onDemandResourcesFactory = onDemandResourcesFactory;
        @this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        @this.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory;
        return this;
    }
    

    void init(ImageCache@ imageCache, int level, string loadingString)
    {
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        if (Features::getInstance().isFeature(MainFeatureFactory::getInstance().LOAD_ALL)) {
            if (this.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized()) {
                return;
            }
            this.initAll(imageCache, loadingString);
        } else if (level != resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            LayerPlacementInterfaceBasicArrayListFactoryInterface@ layerPlacementInterfaceBasicArrayListFactoryInterface = this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance(level);
            this.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString);
        }
    }
    

    void initAll(ImageCache@ imageCache, string loadingString)
    {
        int index = 0;
        int portion = 120;
        OnDemandResources@ onDemandResources;
        for (int onDemandIndex = this.onDemandResourcesFactory.size(); --onDemandIndex >= 0; ) {
            @onDemandResources = this.onDemandResourcesFactory.remove(onDemandIndex);
            if (onDemandResources !is OnDemandResources::NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
    

    void initLevel(LayerPlacementInterfaceBasicArrayListFactoryInterface@ layerPlacementInterfaceBasicArrayListFactoryInterface, ImageCache@ imageCache, int level, string loadingString)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        int portion = 120;
        int index = 0;
        int[]@ onDemandArray = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources();
        PreLogUtil::put(StringMaker().jinit_StringMaker().append(commonStrings.START).appendint(int(onDemandArray.length())).toString(), this, "initLevel");
        OnDemandResources@ onDemandResources;
        for (int onDemandIndex = int(onDemandArray.length()); --onDemandIndex >= 0; ) {
            @onDemandResources = this.onDemandResourcesFactory.remove(onDemandArray[onDemandIndex]);
            if (onDemandResources !is OnDemandResources::NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
}

