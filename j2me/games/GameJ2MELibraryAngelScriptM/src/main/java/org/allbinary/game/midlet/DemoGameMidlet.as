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
// package org.allbinary.game.midlet

class DemoGameMidlet : GameMidlet
{
    

    DemoGameMidlet@ jinit_DemoGameMidlet(ClientInformationFactory@ clientInformationFactory)
    {
        this.jinit_GameMidlet(clientInformationFactory);
        return this;
    }
    

    bool isContinue()
    {
        ABHashtable@ hashtable = this.getStartStateHashtable();
        if (hashtable !is null && hashtable.size() > 0) {
            return true;
        } else {
            return false;
        }
        return false;
    }
    

    int getHighestLevel()
    {
        return 1;
    }
    

    GameCanvasRunnableInterface@ createDemoGameCanvasRunnableInterface()
    {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, this.commonStrings.CREATE);
        return NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE;
    }
    

    GameCanvasRunnableInterface@ createGameCanvasRunnable(AllBinaryGameLayerManager@ allBinaryGameLayerManager)
    {
        jthrow(Exception().jinit_Exception(this.commonStrings.NOT_IMPLEMENTED));
        return null;
    }
    

    GameCanvasRunnableInterface@ createGameCanvasRunnableInterface()
    {
        return this.createGameCanvasRunnable(this.createGameLayerManager());
    }
    

    void demoSetup()
    {
    }
    

    void postDemoSetup()
    {
    }
    

    void setDemo()
    {
        this.logUtil.putF(this.commonStrings.START, this, "setDemo");
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        progressCanvas.start();
        PrimaryThreadPool::getInstance().runTask(DemoRunnable().jinit_DemoRunnable(this));
    }
    

    void createGame()
    {
        string CREATE_GAME = "createGame";
        this.logUtil.putF(this.commonStrings.START, this, CREATE_GAME);
        ProgressCanvas@ progressCanvas = ProgressCanvasFactory::getInstance();
        progressCanvas.start();
        ABHashtable@ hashtable = this.getStartStateHashtable();
        this.setStartStateHashtable(StdUtil::getInstance().NULL_TABLE);
        PrimaryThreadPool::getInstance().runTask(CreateGameRunnable().jinit_CreateGameRunnable(this, hashtable));
        this.logUtil.putF(this.commonStrings.END, this, CREATE_GAME);
    }
    

    bool isReady()
    {
        return true;
    }
}

