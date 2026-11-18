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
// package org.allbinary.input.motion.button

class BasicTouchButtonsBuilder : BaseTouchInput
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_BasicTouchButtonsBuilder()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    BasicTouchButtonsBuilder@ jinit_BasicTouchButtonsBuilder()
    {
        this.jinit_BaseTouchInput();
        this.jfields_BasicTouchButtonsBuilder();
        return this;
    }
    

    BasicArrayList@ getList()
    {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
            CommonButtons@ commonButtons = CommonButtons::getInstance();
            TouchButtonLocationHelper@ touchButtonLocationHelper = TouchButtonLocationHelper().jinit_TouchButtonLocationHelper();
            BasicTouchButtonCellPositionFactory@ basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory().jinit_BasicTouchButtonCellPositionFactory();
            TouchButton@ UP = TouchButton::createButton(BasicTouchInputFactory::getInstance().UP, TouchButtonUpResource::getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton@ DOWN = TouchButton::createButton(BasicTouchInputFactory::getInstance().DOWN, TouchButtonDownResource::getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton@ LEFT = TouchButton::createButton(BasicTouchInputFactory::getInstance().SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource::getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton@ RIGHT = TouchButton::createButton(BasicTouchInputFactory::getInstance().SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource::getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            list.add(UP);
            list.add(LEFT);
            list.add(RIGHT);
            list.add(DOWN);
            return list;
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e);
            return BasicArrayListUtil::getInstance().getImmutableInstance();
            }
            else { jthrow(jex0); }
        }
        return null;
    }
}

