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

class LimitCommandsVisitor : Visitor
{
    bool isNotSmallDisplay_LimitCommandsVisitor;
    

    LimitCommandsVisitor@ jinit_LimitCommandsVisitor()
    {
        this.jinit_Visitor();
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        this.isNotSmallDisplay_LimitCommandsVisitor = (displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo::getInstance().SMALL_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo::getInstance().SMALL_HEIGHT);
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        Command@ command = cast<Command>(anyType);
        BooleanFactory@ booleanFactory = BooleanFactory::getInstance();
        if (this.isNotSmallDisplay_LimitCommandsVisitor || command.getPriority() == 1 || command is GameCommandsFactory::getInstance().EXIT_COMMAND || command is GameCommandsFactory::getInstance().EXIT_WITHOUT_PROGRESS_COMMAND) {
            return booleanFactory.TRUE;
        } else {
            return booleanFactory.FALSE;
        }
        return null;
    }
}

