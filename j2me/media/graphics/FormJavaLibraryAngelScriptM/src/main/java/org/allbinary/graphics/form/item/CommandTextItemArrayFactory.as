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
// package org.allbinary.graphics.form.item

class CommandTextItemArrayFactory : JObjectBase
{
    BasicArrayList@ list;
    Visitor@ visitorInterface;

    // Java field initializers run after the super constructor
    void jfields_CommandTextItemArrayFactory()
    {
    @this.list = BasicArrayListD().jinit_BasicArrayListD();
    
    }
    

    CommandTextItemArrayFactory@ jinit_CommandTextItemArrayFactory(Visitor@ visitorInterface)
    {
        this.jfields_CommandTextItemArrayFactory();
        @this.visitorInterface = visitorInterface;
        return this;
    }
    

    ABCustomItem@[]@ getInstance(JObject@ vector, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        VectorUtil@ vectorUtil = VectorUtil::getInstance();
        int size = vectorUtil.getSize(vector);
        this.list.clear();
        CommandTextItem@ textItem;
        int priorityLimit = 7;
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        bool isLargeEnoughDisplayForBigMenu = (displayInfo.isPortrait() && displayInfo.getLastHeight() >= ScreenInfo::getInstance().MEDIUM_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastWidth() >= ScreenInfo::getInstance().MEDIUM_WIDTH);
        if (!isLargeEnoughDisplayForBigMenu && size > 3) {
            priorityLimit = 3;
        }
        Command@ command;
        for (int index = 0; index < size; index++) {
            @command = cast<Command>(vectorUtil.elementAt(vector, index));
            if (command.getPriority() < priorityLimit) {
                JBoolean@ aBoolean = cast<JBoolean>(this.visitorInterface.visit(command));
                if (aBoolean.booleanValue()) {
                    @textItem = CommandTextItem().jinit_CommandTextItem(command, ImageItem::LAYOUT_DEFAULT, StringUtil::getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor);
                    this.list.add(textItem);
                }
            }
        }
        ABCustomItem@[]@ textItemArray = array<ABCustomItem@>(this.list.size());
        int size2 = int(textItemArray.length());
        for (int index = 0; index < size2; index++) {
            @textItemArray[index] = cast<ABCustomItem>(this.list.objectArray[index]);
        }
        return textItemArray;
    }
}

