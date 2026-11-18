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

class DemoGameBehavior : JObjectBase
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_DemoGameBehavior()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    DemoGameBehavior@ jinit_DemoGameBehavior()
    {
        this.jfields_DemoGameBehavior();
        return this;
    }
    

    void init()
    {
    }
    

    void pause(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void unPause(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void updateTouch(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void updateScreenButtonPaintable(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable::getInstance());
    }
    

    void setGameState(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void removeAllGameKeyInputListeners(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void updateEndGameProcessor(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void buildGame(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void run(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        this.logUtil.putF(GameTypeFactory::getInstance().BOT.toString(), this, commonStrings.RUN);
    }
    

    void setHighScore(AbeClientInformationInterface@ abeClientInformation, AllBinaryGameCanvas@ allBinaryGameCanvas, string name, int64 score, bool autoSubmit, bool isLast)
    {
    }
}

namespace DemoGameBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = DemoGameBehavior().jinit_DemoGameBehavior();
    }

    DemoGameBehavior@ jcell_instance;
    DemoGameBehavior@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(DemoGameBehavior@ value) property { jclinit(); @jcell_instance = value; }
    

    DemoGameBehavior@ getInstance()
    {
        return DemoGameBehavior::instance;
    }
}

