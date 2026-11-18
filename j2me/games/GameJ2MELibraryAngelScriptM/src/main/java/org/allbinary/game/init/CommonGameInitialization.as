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

class CommonGameInitialization : BaseGameInitialization
{
    CommonStrings@ commonStrings;

    // Java field initializers run after the super constructor
    void jfields_CommonGameInitialization()
    {
    @this.commonStrings = CommonStrings::getInstance();
    }
    

    CommonGameInitialization@ jinit_CommonGameInitialization(ResourceInitialization@[]@ resourceInitializationArray, int portion)
    {
        this.jinit_BaseGameInitialization(resourceInitializationArray, portion);
        this.jfields_CommonGameInitialization();
        return this;
    }
    

    void init(AbeClientInformationInterface@ abeClientInformation, CommandListener@ commandListener, int level)
    {
        BaseGameInitialization::init(abeClientInformation, commandListener, level);
        ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
        if (!this.isGameInitialized() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            this.setGameInitialized(true);
            ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
            SmallIntegerSingletonFactory::getInstance().init();
            progressCanvas.addNormalPortion(50, "Integers");
            PointFactory::getInstance().init();
            progressCanvas.addNormalPortion(50, "Points");
            AngleFactory::getInstance();
            progressCanvas.addNormalPortion(50, "Angles");
            this.initGame();
            this.resourceInitializationArray[this.GAME_RESOURCES].init();
        }
        BaseGameInitialization::resourceInitialization(level);
    }
    

    void initGame()
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
    }
}

