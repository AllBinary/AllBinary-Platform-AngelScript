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

class DemoCanvasBasicStartInputProcessor : BasicMenuInputProcessor
{
    

    DemoCanvasBasicStartInputProcessor@ jinit_DemoCanvasBasicStartInputProcessor(BasicArrayList@ gameKeyEventList, RunnableCanvas@ gameCanvas)
    {
        this.jinit_BasicMenuInputProcessor(gameKeyEventList, -1, gameCanvas);
        return this;
    }
    

    int processInputList()
    {
        BasicArrayList@ list = this.getGameKeyEventList();
        int size = list.size();
        GameKeyEvent@ gameKeyEvent;
        for (int index = 0; index < size; index++) {
            @gameKeyEvent = cast<GameKeyEvent>(list.objectArray[index]);
            this.logUtil.putF(StringMaker().jinit_StringMaker().append("Start GameKey: ").append(StringUtil::getInstance().toString(gameKeyEvent)).toString(), this, GameInputStrings::getInstance().PROCESS_INPUT);
        }
        this.getCanvas().getCustomCommandListener().commandAction(GameCommandsFactory::getInstance().START_COMMAND, NullCanvas::NULL_CANVAS);
        return size;
    }
}

