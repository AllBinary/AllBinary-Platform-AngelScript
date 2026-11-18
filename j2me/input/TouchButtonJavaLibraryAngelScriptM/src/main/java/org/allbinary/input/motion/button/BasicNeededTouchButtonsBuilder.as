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

class BasicNeededTouchButtonsBuilder : BaseTouchInput
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_BasicNeededTouchButtonsBuilder()
    {
    @this.logUtil = LogUtil::getInstance();
    }

    BasicNeededTouchButtonsBuilder@ jinit_BasicNeededTouchButtonsBuilder()
    {
        this.jinit_BaseTouchInput();
        this.jfields_BasicNeededTouchButtonsBuilder();
        return this;
    }
    

    BasicArrayList@ getList()
    {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
            TouchButtonLocationHelper@ touchButtonLocationHelper = TouchButtonLocationHelper().jinit_TouchButtonLocationHelper();
            BasicTouchButtonCellPositionFactory@ basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory().jinit_BasicTouchButtonCellPositionFactory();
            CommonButtons@ commonButtons = CommonButtons::getInstance();
            Animation@ animationInterface = NullAnimationFactory::getFactoryInstance().getInstance(0);
            TouchButton@ UP = TouchButton().jinit_TouchButton(BasicTouchInputFactory::getInstance().UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton@ DOWN = TouchButton().jinit_TouchButton(BasicTouchInputFactory::getInstance().DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton@ LEFT = TouchButton().jinit_TouchButton(BasicTouchInputFactory::getInstance().LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton@ RIGHT = TouchButton().jinit_TouchButton(BasicTouchInputFactory::getInstance().RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            list.add(UP);
            list.add(DOWN);
            list.add(LEFT);
            list.add(RIGHT);
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

