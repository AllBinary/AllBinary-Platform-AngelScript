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

class PlayerGameInputGameLayer : AllBinaryGameLayer, PlayerGameInputCompositeInterface
{
    PlayerGameInput@ playerGameInput_PlayerGameInputGameLayer;
    

    PlayerGameInputGameLayer@ jinit_PlayerGameInputGameLayer(int playerInputId)
    {
        this.jinit_AllBinaryGameLayer(StringUtil::getInstance().EMPTY_STRING, Rectangle().jinit_Rectangle(PointFactory::getInstance().ZERO_ZERO, 0, 0), StaticViewPosition().jinit_StaticViewPosition(0, 0, 0));
        @this.playerGameInput_PlayerGameInputGameLayer = PlayerGameInput().jinit_PlayerGameInput(this.getGameKeyEventList(), BasicArrayListD().jinit_BasicArrayListD(), playerInputId);
        CanvasStrings@ canvasStrings = CanvasStrings::getInstance();
        this.logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", this, canvasStrings.PAINT);
        return this;
    }
    

    PlayerGameInput@ getPlayerGameInput()
    {
        return this.playerGameInput_PlayerGameInputGameLayer;
    }
    

    void initInputProcessors()
    {
    }
    

    void processInput(AllBinaryLayerManager@ myManager)
    {
    }
    

    void paint(Graphics@ graphics)
    {
    }
}

