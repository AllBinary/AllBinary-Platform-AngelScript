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
// package org.allbinary.game.layer.special

interface SpecialGameInputInterface : JObject, PaintableInterface
{
    void up();
    void down();
    void right();
    void left();
    void strafeLeft();
    void strafeRight();
    void fire(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent);
    void special1(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent);
    void special2(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent);
    void special3(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent);
    void special4(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent);
    void special5(AllBinaryLayerManager@ layerManager, GameKeyEvent@ gameKeyEvent);
}

