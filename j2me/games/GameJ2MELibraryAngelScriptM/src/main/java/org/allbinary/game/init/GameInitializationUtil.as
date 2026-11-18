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

class GameInitializationUtil : JObjectBase
{
    GameInitializedEvent@ EVENT;

    // Java field initializers run after the super constructor
    void jfields_GameInitializationUtil()
    {
    @this.EVENT = GameInitializedEvent().jinit_GameInitializedEvent(this);
    }

    GameInitializationUtil@ jinit_GameInitializationUtil()
    {
        this.jfields_GameInitializationUtil();
        return this;
    }
    

    void initDemo(AbeClientInformationInterface@ abeClientInformation, MyCanvas@ canvas, BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface)
    {
        MainFeatureFactory@ mainFeatureFactory = MainFeatureFactory::getInstance();
        if (ChangedGameFeatureListener::getInstance().isChangedFeature(mainFeatureFactory.STATIC)) {
            GameInitializationInterface@ gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            Features@ features = Features::getInstance();
            if (features.isFeature(mainFeatureFactory.LOAD_ALL)) {
                this.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
            } else if (features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)) {
                ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel());
                this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY);
            } else {
                jthrow(Exception().jinit_Exception("No Loading Feature Available"));
            }
            GameInitializedEventHandler::getInstance().fireEvent(this.EVENT);
        }
    }
    

    void initGame(AbeClientInformationInterface@ abeClientInformation, MyCanvas@ canvas, BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface)
    {
        if (ChangedGameFeatureListener::getInstance().isChangedFeature(MainFeatureFactory::getInstance().STATIC)) {
            GameInitializationInterface@ gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            ResourceLoadingLevelFactory@ resourceLoadingLevelFactory = ResourceLoadingLevelFactory::getInstance();
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel());
            this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL);
            GameInitializedEventHandler::getInstance().fireEvent(this.EVENT);
            ChangedGameFeatureListener::getInstance().remove(MainFeatureFactory::getInstance().STATIC);
        }
    }
}

namespace GameInitializationUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameInitializationUtil().jinit_GameInitializationUtil();
    }

    GameInitializationUtil@ jcell_instance;
    GameInitializationUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameInitializationUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    GameInitializationUtil@ getInstance()
    {
        return GameInitializationUtil::instance;
    }
}

