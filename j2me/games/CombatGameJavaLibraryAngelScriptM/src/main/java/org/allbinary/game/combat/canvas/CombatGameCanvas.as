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
// package org.allbinary.game.combat.canvas

class CombatGameCanvas : AllBinaryGameCanvas
{
    

    CombatGameCanvas@ jinit_CombatGameCanvas(CommandListener@ cmdListener, AllBinaryGameLayerManager@ gameLayerManager, HighScoresFactoryInterface@ highScoresFactoryInterface, BasicBuildGameInitializerFactory@ gameInitializationInterfaceFactoryInterface, bool buffered)
    {
        this.jinit_AllBinaryGameCanvas(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered);
        return this;
    }
    

    void CombatGameCanvas_init()
    {
        DestroyEventCircularStaticPool::getInstance().init(this);
        ProgressCanvasFactory::getInstance().addNormalPortion(50, "Destroy Events");
    }
    

    void initApp(AbeClientInformationInterface@ abeClientInformation)
    {
        this.CombatGameCanvas_init();
        AllBinaryGameCanvas::initApp(abeClientInformation);
    }
    

    void initConfigurablePortion(int portion)
    {
        DestroyedLayerProcessor::init();
        ProgressCanvasFactory::getInstance().addNormalPortion(portion, "Basic Processors");
        Features@ features = Features::getInstance();
        GameFeatureFactory@ gameFeatureFactory = GameFeatureFactory::getInstance();
        if (features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)) {
            @CombatGameCanvas::basicLayerProcessor = array<BasicLayerProcessor@>(2);
            @CombatGameCanvas::basicLayerProcessor[0] = DestroyedLayerProcessor::getInstance();
            @CombatGameCanvas::basicLayerProcessor[1] = DropLayerProcessor::getInstance();
        } else {
            @CombatGameCanvas::basicLayerProcessor = array<BasicLayerProcessor@>(1);
            @CombatGameCanvas::basicLayerProcessor[0] = DestroyedLayerProcessor::getInstance();
        }
    }
    

    void processPlayingGame()
    {
        AllBinaryGameCanvas::processPlayingGame();
        for (int index = int(CombatGameCanvas::basicLayerProcessor.length()); --index >= 0; ) {
            CombatGameCanvas::basicLayerProcessor[index].process(this.gameLayerManager);
        }
    }
    

    void cleanupGame()
    {
        AllBinaryGameCanvas::cleanupGame();
        for (int index = int(CombatGameCanvas::basicLayerProcessor.length()); --index >= 0; ) {
            CombatGameCanvas::basicLayerProcessor[index].getList().clear();
        }
        GroupLayerManagerListener::getInstance().clear();
        GroupLayerManagerListener::getInstance().log();
        DestroyedEventHandler::getInstance().removeAllListeners();
        this.cleanupManager();
    }
    

    void cleanupManager()
    {
        this.gameLayerManager.cleanup();
    }
}

namespace CombatGameCanvas
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_basicLayerProcessor = array<BasicLayerProcessor@>(0);
    }

    BasicLayerProcessor@[]@ jcell_basicLayerProcessor;
    BasicLayerProcessor@[]@ get_basicLayerProcessor() property { jclinit(); return jcell_basicLayerProcessor; }
    void set_basicLayerProcessor(BasicLayerProcessor@[]@ value) property { jclinit(); @jcell_basicLayerProcessor = value; }
}

