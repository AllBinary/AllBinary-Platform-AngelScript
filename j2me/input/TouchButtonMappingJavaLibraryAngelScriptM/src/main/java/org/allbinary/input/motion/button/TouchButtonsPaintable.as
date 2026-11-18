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

class TouchButtonsPaintable : Paintable
{
    BasicColor@ foregroundBasicColor;
    int foregroundColor;
    BasicColorSetUtil@ basicSetColorUtil;
    TouchButtonFactory@ touchButtonFactory_TouchButtonsPaintable;

    // Java field initializers run after the super constructor
    void jfields_TouchButtonsPaintable()
    {
    
    
    @this.basicSetColorUtil = BasicColorSetUtil::getInstance();
    @this.touchButtonFactory_TouchButtonsPaintable = TouchButtonFactory::getInstance();
    }
    

    TouchButtonsPaintable@ jinit_TouchButtonsPaintable(BasicColor@ basicColor)
    {
        this.jinit_Paintable();
        this.jfields_TouchButtonsPaintable();
        @this.foregroundBasicColor = basicColor;
        this.foregroundColor = basicColor.intValue();
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        BasicArrayList@ list = this.touchButtonFactory_TouchButtonsPaintable.getList();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.foregroundBasicColor, this.foregroundColor);
        TouchButton@ touchButton;
        for (int index = list.size(); --index >= 0; ) {
            @touchButton = cast<TouchButton>(list.objectArray[index]);
            touchButton.paint(graphics);
        }
        for (int index = list.size(); --index >= 0; ) {
            @touchButton = cast<TouchButton>(list.objectArray[index]);
            touchButton.paintHint(graphics);
        }
    }
}

