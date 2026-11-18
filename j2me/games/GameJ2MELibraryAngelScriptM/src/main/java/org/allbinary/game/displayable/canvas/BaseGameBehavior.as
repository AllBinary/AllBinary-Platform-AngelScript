/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class BaseGameBehavior : DemoGameBehavior
{

    BaseGameBehavior@ jinit_BaseGameBehavior()
    {
        this.jinit_DemoGameBehavior();
        return this;
    }
    

    void init()
    {
        GameAdState@ gameAdState = GameAdStateFactory::getInstance().getCurrentInstance();
        gameAdState.playingAdState();
    }
    

    void pause(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        Features@ features = Features::getInstance();
        if (features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL_AS_GAME_THREAD)) {
            CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable);
        }
    }
    

    void unPause(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        if (Features::getInstance().isDefault(OpenGLFeatureFactory::getInstance().OPENGL_AS_GAME_THREAD)) {
            CurrentDisplayableFactory@ currentDisplayableFactory = CurrentDisplayableFactory::getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable);
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas);
        }
    }
    

    void updateTouch(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.updateTouch2();
    }
    

    void updateScreenButtonPaintable(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.updateScreenButtonPaintable2();
    }
    

    void setGameState(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.updateGameState();
    }
    

    void removeAllGameKeyInputListeners(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.removeAllGameKeyInputListeners2();
    }
    

    void updateEndGameProcessor(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.updateEndGameProcessor2();
    }
    

    void buildGame(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.buildGame2();
    }
    

    void run(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.run2();
    }
    

    void setHighScore(AbeClientInformationInterface@ abeClientInformation, AllBinaryGameCanvas@ allBinaryGameCanvas, string name, int64 score, bool autoSubmit, bool isLast)
    {
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast);
    }
}

namespace BaseGameBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = BaseGameBehavior().jinit_BaseGameBehavior();
    }

    BaseGameBehavior@ jcell_instanceC;
    BaseGameBehavior@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(BaseGameBehavior@ value) property { jclinit(); @jcell_instanceC = value; }
    

    DemoGameBehavior@ getInstance()
    {
        return BaseGameBehavior::instanceC;
    }
}

