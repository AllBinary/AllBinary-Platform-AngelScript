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
// package org.allbinary.game.layer

class AllBinaryGameLayerManager : AllBinaryLayerManager
{
    BasicColor@ backgroundBasicColor_AllBinaryGameLayerManager;
    BasicColor@ foregroundBasicColor_AllBinaryGameLayerManager;
    GameInfo@ gameInfo_AllBinaryGameLayerManager;
    PlayerGameInputCompositeInterface@ playerGameInputCompositeInterface_AllBinaryGameLayerManager;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryGameLayerManager()
    {
    
    
    
    @this.playerGameInputCompositeInterface_AllBinaryGameLayerManager = NullPlayerGameInputComposite::NULL_PLAYER_GAME_INPUT_COMPOSITE;
    }
    

    AllBinaryGameLayerManager@ jinit_AllBinaryGameLayerManager(BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor, GameInfo@ gameInfo)
    {
        this.jinit_AllBinaryLayerManager();
        this.jfields_AllBinaryGameLayerManager();
        @this.backgroundBasicColor_AllBinaryGameLayerManager = backgroundBasicColor;
        @this.foregroundBasicColor_AllBinaryGameLayerManager = foregroundBasicColor;
        ItemColorFactory@ itemColorFactory = ItemColorFactory::getInstance();
        itemColorFactory.INVERT_PAINT = this.backgroundBasicColor_AllBinaryGameLayerManager.intValue();
        itemColorFactory.PAINT = this.foregroundBasicColor_AllBinaryGameLayerManager.intValue();
        @this.gameInfo_AllBinaryGameLayerManager = gameInfo;
        return this;
    }
    

    AllBinaryLayerManager@ getLayerManager()
    {
        return this;
    }
    

    void init()
    {
    }
    

    BasicColor@ getBackgroundBasicColor()
    {
        return this.backgroundBasicColor_AllBinaryGameLayerManager;
    }
    

    void setBackgroundBasicColor(BasicColor@ backgroundBasicColor)
    {
        @this.backgroundBasicColor_AllBinaryGameLayerManager = backgroundBasicColor;
        ItemColorFactory::getInstance().INVERT_PAINT = this.backgroundBasicColor_AllBinaryGameLayerManager.intValue();
    }
    

    BasicColor@ getForegroundBasicColor()
    {
        return this.foregroundBasicColor_AllBinaryGameLayerManager;
    }
    

    void setForegroundBasicColor(BasicColor@ foregroundBasicColor)
    {
        @this.foregroundBasicColor_AllBinaryGameLayerManager = foregroundBasicColor;
        ItemColorFactory::getInstance().PAINT = this.foregroundBasicColor_AllBinaryGameLayerManager.intValue();
    }
    

    GameInfo@ getGameInfo()
    {
        return this.gameInfo_AllBinaryGameLayerManager;
    }
    

    void setGameInfo(GameInfo@ gameInfo)
    {
        @this.gameInfo_AllBinaryGameLayerManager = gameInfo;
    }
    

    void setLayerProcessorList(BasicArrayList@ list)
    {
        LayerProcessor@[]@ layerProcessorInterfaceArray = array<LayerProcessor@>(list.size());
        int size = int(layerProcessorInterfaceArray.length());
        for (int index = 0; index < size; index++) {
            @layerProcessorInterfaceArray[index] = cast<LayerProcessor>(list.objectArray[index]);
        }
        this.setLayerProcessorArray(layerProcessorInterfaceArray);
    }
    

    void setPlayerGameInputCompositeInterface(PlayerGameInputCompositeInterface@ playerGameInputCompositeInterface)
    {
        @this.playerGameInputCompositeInterface_AllBinaryGameLayerManager = playerGameInputCompositeInterface;
    }
    

    PlayerGameInputCompositeInterface@ getPlayerGameInputCompositeInterface()
    {
        return this.playerGameInputCompositeInterface_AllBinaryGameLayerManager;
    }
}

namespace AllBinaryGameLayerManager
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_ALLBINARY_LAYER_MANAGER = NullUtil::getInstance().NULL_OBJECT;
        @jcell_ID = SmallIntegerSingletonFactory::getInstance().getAt(22);
    }

    JObject@ jcell_NULL_ALLBINARY_LAYER_MANAGER;
    JObject@ get_NULL_ALLBINARY_LAYER_MANAGER() property { jclinit(); return jcell_NULL_ALLBINARY_LAYER_MANAGER; }
    void set_NULL_ALLBINARY_LAYER_MANAGER(JObject@ value) property { jclinit(); @jcell_NULL_ALLBINARY_LAYER_MANAGER = value; }

    JInteger@ jcell_ID;
    JInteger@ get_ID() property { jclinit(); return jcell_ID; }
    void set_ID(JInteger@ value) property { jclinit(); @jcell_ID = value; }
    

    AllBinaryGameLayerManager@ getNullInstance()
    {
        if (AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER is NullUtil::getInstance().NULL_OBJECT) {
            @AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER = AllBinaryGameLayerManager().jinit_AllBinaryGameLayerManager(BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE, GameInfo::NONE);
        }
        return cast<AllBinaryGameLayerManager>(AllBinaryGameLayerManager::NULL_ALLBINARY_LAYER_MANAGER);
    }
}

