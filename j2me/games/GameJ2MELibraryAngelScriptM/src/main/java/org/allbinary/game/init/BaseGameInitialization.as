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
// package org.allbinary.game.init

class BaseGameInitialization : JObjectBase, GameInitializationInterface
{
    ResourceInitialization@[]@ resourceInitializationArray;
    int portion_BaseGameInitialization;
    bool initialized_BaseGameInitialization;
    int EARLY_RESOURCES;
    int GAME_RESOURCES;
    int EARLY_CHANGABLE_RESOURCES;
    int GAME_CHANGABLE_RESOURCES;
    bool gameInitialized_BaseGameInitialization;
    bool allLoaded_BaseGameInitialization;

    // Java field initializers run after the super constructor
    void jfields_BaseGameInitialization()
    {
    
    
    
    this.EARLY_RESOURCES = 0;
    this.GAME_RESOURCES = 1;
    this.EARLY_CHANGABLE_RESOURCES = 2;
    this.GAME_CHANGABLE_RESOURCES = 3;
    
    
    }
    

    BaseGameInitialization@ jinit_BaseGameInitialization(ResourceInitialization@[]@ resourceInitializationArray, int portion)
    {
        this.jfields_BaseGameInitialization();
        @this.resourceInitializationArray = resourceInitializationArray;
        this.portion_BaseGameInitialization = portion;
        return this;
    }
    

    void initKey(int portion)
    {
    }
    

    void initKeyMapping(AbeClientInformationInterface@ abeClientInformation, int portion)
    {
        if (ChangedGameFeatureListener::getInstance().isChangedFeature(InputFeatureFactory::getInstance().INPUT_MAPPING)) {
            PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().init(abeClientInformation);
            ProgressCanvasFactory::getInstance().addNormalPortion(50, "Game Keys");
            ChangedGameFeatureListener::getInstance().remove(InputFeatureFactory::getInstance().INPUT_MAPPING);
        }
    }
    

    void init(AbeClientInformationInterface@ abeClientInformation, CommandListener@ commandListener, int level)
    {
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        if (!this.isInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() || level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())) {
            int localPortion = 40;
            if (level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
                localPortion = 8;
            }
            this.setInitialized(true);
            this.initKey(this.getPortion());
            this.initKeyMapping(abeClientInformation, this.getPortion());
            GameKeyEventFactory::getInstance().init();
            ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
            progressCanvas.addNormalPortion(localPortion, "Game Key Events");
            BasicTouchInputFactory::getInstance().init(PlatformInputMappingFactory::getInstance().getPersistentInputMappingInstance().getInputMapping());
            CancelTouchButtonInputFactory::getInstance();
            progressCanvas.addNormalPortion(localPortion, "Touch Input");
            CompleteMotionGestureInputToGameMotionGestureInput::getInstance().init();
            progressCanvas.addNormalPortion(localPortion, "Motion Input");
            GameFeatureImageCacheFactory::init();
            progressCanvas.addNormalPortion(localPortion, "Image Cache");
            this.resourceInitializationArray[this.EARLY_RESOURCES].init();
        }
    }
    

    void resourceInitialization(int level)
    {
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
            this.clearResources();
            this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init();
        }
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            if (this.allLoaded_BaseGameInitialization) {
                this.clearResources();
            }
            if (FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().getList().size() == 0) {
                this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES].init();
            }
            this.resourceInitializationArray[this.GAME_CHANGABLE_RESOURCES].init();
            this.allLoaded_BaseGameInitialization = true;
        }
    }
    

    bool resourceAnimationChange()
    {
        ChangedGameFeatureListener@ changedGameFeatureListener = ChangedGameFeatureListener::getInstance();
        GameConfigurationCentral@ gameConfigurationCentral = GameConfigurationCentral::getInstance();
        if (changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)) {
            return true;
        }
        if (ChangedGameFeatureListener::getInstance().isChangedFeature(MainFeatureFactory::getInstance().STATIC)) {
            return true;
        }
        return false;
    }
    

    void clearResources()
    {
        this.allLoaded_BaseGameInitialization = false;
        GameFeatureImageCacheFactory::releaseAll();
        FeaturedAnimationInterfaceFactoryInterfaceFactory@ featuredAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance();
        featuredAnimationInterfaceFactoryInterfaceFactory.clear();
        FeaturedResourceRelativeRelationshipFactory::getInstance().clear();
    }
    

    void setGameInitialized(bool gameInitialized)
    {
        this.gameInitialized_BaseGameInitialization = gameInitialized;
    }
    

    bool isGameInitialized()
    {
        return this.gameInitialized_BaseGameInitialization;
    }
    

    int getPortion()
    {
        return this.portion_BaseGameInitialization;
    }
    

    void setInitialized(bool initialized)
    {
        this.initialized_BaseGameInitialization = initialized;
    }
    

    bool isInitialized()
    {
        return this.initialized_BaseGameInitialization;
    }
}

namespace BaseGameInitialization
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_BASE_GAME_INITIALIZATION = BaseGameInitialization().jinit_BaseGameInitialization(array<ResourceInitialization@>(0), 0);
    }

    BaseGameInitialization@ jcell_NULL_BASE_GAME_INITIALIZATION;
    BaseGameInitialization@ get_NULL_BASE_GAME_INITIALIZATION() property { jclinit(); return jcell_NULL_BASE_GAME_INITIALIZATION; }
    void set_NULL_BASE_GAME_INITIALIZATION(BaseGameInitialization@ value) property { jclinit(); @jcell_NULL_BASE_GAME_INITIALIZATION = value; }
}

