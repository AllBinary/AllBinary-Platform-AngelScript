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
// package org.allbinary.game.displayable.canvas

class CheatGameInputProcessor : PlayerGameInput
{
    string PROCESS_GAME_CheatGameInputProcessor;
    AllBinaryGameCanvas@ gameCanvas_CheatGameInputProcessor;
    GameKeyFactory@ gameKeyFactory_CheatGameInputProcessor;

    // Java field initializers run after the super constructor
    void jfields_CheatGameInputProcessor()
    {
    this.PROCESS_GAME_CheatGameInputProcessor = "processGame";
    
    @this.gameKeyFactory_CheatGameInputProcessor = GameKeyFactory::getInstance();
    }
    

    CheatGameInputProcessor@ jinit_CheatGameInputProcessor(AllBinaryGameCanvas@ gameCanvas)
    {
        this.jinit_PlayerGameInput(BasicArrayListD().jinit_BasicArrayListD(), BasicArrayListD().jinit_BasicArrayListD(), -1);
        this.jfields_CheatGameInputProcessor();
        @this.gameCanvas_CheatGameInputProcessor = gameCanvas;
        return this;
    }
    

    void update()
    {
        try {
            AllBinaryGameLayerManager@ gameLayerManager = this.gameCanvas_CheatGameInputProcessor.getLayerManager();
            BasicArrayList@ list = this.getGameKeyEventList();
            int size = list.size();
            for (int index = 0; index < size; index++) {
                JObject@ anyType = list.objectArray[index];
                int key = GameKeyEventUtil::getKey(anyType);
                if (key == this.gameKeyFactory_CheatGameInputProcessor.LEVEL_DOWN.getId()) {
                    CheatGameInputProcessor::inputProcessor.strafeLeft();
                    break;
                } else if (key == this.gameKeyFactory_CheatGameInputProcessor.LEVEL_UP.getId()) {
                    CheatGameInputProcessor::inputProcessor.strafeRight();
                    break;
                }
                if (key == this.gameKeyFactory_CheatGameInputProcessor.LEFT.getId()) {
                    CheatGameInputProcessor::inputProcessor.left();
                    break;
                } else if (key == this.gameKeyFactory_CheatGameInputProcessor.RIGHT.getId()) {
                    CheatGameInputProcessor::inputProcessor.right();
                    break;
                } else if (key == this.gameKeyFactory_CheatGameInputProcessor.UP.getId()) {
                    CheatGameInputProcessor::inputProcessor.up();
                    break;
                } else if (key == this.gameKeyFactory_CheatGameInputProcessor.DOWN.getId()) {
                    CheatGameInputProcessor::inputProcessor.down();
                    break;
                } else if (key == this.gameKeyFactory_CheatGameInputProcessor.KEY_NUM1.getId()) {
                    CheatGameInputProcessor::inputProcessor.special1(gameLayerManager, GameKeyEvent::NONE);
                    break;
                } else if (key == this.gameKeyFactory_CheatGameInputProcessor.KEY_NUM3.getId()) {
                    CheatGameInputProcessor::inputProcessor.special2(gameLayerManager, GameKeyEvent::NONE);
                    break;
                }
            }
            list.clear();
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
            else { jthrow(jex0); }
        }
    }
}

namespace CheatGameInputProcessor
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_inputProcessor = SpecialGameInputFactory::NO_SPECIAL_GAME_INPUT;
    }

    SpecialGameInputInterface@ jcell_inputProcessor;
    SpecialGameInputInterface@ get_inputProcessor() property { jclinit(); return jcell_inputProcessor; }
    void set_inputProcessor(SpecialGameInputInterface@ value) property { jclinit(); @jcell_inputProcessor = value; }
}

