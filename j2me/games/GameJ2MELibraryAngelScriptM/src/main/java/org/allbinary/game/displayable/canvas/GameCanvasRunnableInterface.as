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

interface GameCanvasRunnableInterface : JObject, RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface
{
    string getTitle();
    bool isInitialized();
    bool isPaused();
    void unPause();
    void pause();
    bool isHighScoreSubmitted();
    void setHighScoreSubmitted(bool highScoreSubmitted);
    void processGameOver();
    bool isGameOver();
    void initCommands(CommandListener@ cmdListener);
    ABHashtable@ getCurrentStateHashtable();
    ABHashtable@ getLoadStateHashtable();
    void setLoadStateHashtable(ABHashtable@ hashtable);
    int getType();
}

