/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class NullGameCanvasRunnable : JObjectBase, GameCanvasRunnableInterface
{
    GameStateFactory@ gameStateFactory;

    // Java field initializers run after the super constructor
    void jfields_NullGameCanvasRunnable()
    {
    @this.gameStateFactory = GameStateFactory::getInstance();
    }

    NullGameCanvasRunnable@ jinit_NullGameCanvasRunnable()
    {
        this.jfields_NullGameCanvasRunnable();
        return this;
    }
    

    string getTitle()
    {
        return StringUtil::getInstance().EMPTY_STRING;
    }
    

    bool isInitialized()
    {
        return false;
    }
    

    bool isPaused()
    {
        return false;
    }
    

    void unPause()
    {
    }
    

    void pause()
    {
    }
    

    bool isHighScoreSubmitted()
    {
        return false;
    }
    

    void setHighScoreSubmitted(bool highScoreSubmitted)
    {
    }
    

    void processGameOver()
    {
    }
    

    bool isGameOver()
    {
        return false;
    }
    

    void initCommands(CommandListener@ cmdListener)
    {
    }
    

    ABHashtable@ getCurrentStateHashtable()
    {
        return StdUtil::getInstance().NULL_TABLE;
    }
    

    ABHashtable@ getLoadStateHashtable()
    {
        return StdUtil::getInstance().NULL_TABLE;
    }
    

    void setLoadStateHashtable(ABHashtable@ hashtable)
    {
    }
    

    int getType()
    {
        return -1;
    }
    

    void setGameState(GameState@ gameState)
    {
    }
    

    GameState@ getGameState()
    {
        return this.gameStateFactory.NO_GAME_STATE;
    }
    

    void itemStateChanged(Item@ item)
    {
    }
    

    void paint(Graphics@ graphics)
    {
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    bool isRunning()
    {
        return false;
    }
    

    void setRunning(bool isRunning)
    {
    }
    

    void setThread(Thread@ thread)
    {
    }
    

    void run()
    {
    }
}

namespace NullGameCanvasRunnable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_GAME_CANVAS_RUNNABLE = NullGameCanvasRunnable().jinit_NullGameCanvasRunnable();
    }

    NullGameCanvasRunnable@ jcell_NULL_GAME_CANVAS_RUNNABLE;
    NullGameCanvasRunnable@ get_NULL_GAME_CANVAS_RUNNABLE() property { jclinit(); return jcell_NULL_GAME_CANVAS_RUNNABLE; }
    void set_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable@ value) property { jclinit(); @jcell_NULL_GAME_CANVAS_RUNNABLE = value; }
}

