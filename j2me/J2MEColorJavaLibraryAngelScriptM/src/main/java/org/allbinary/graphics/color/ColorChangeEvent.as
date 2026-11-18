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
// package org.allbinary.graphics.color

class ColorChangeEvent : AllBinaryEventObject
{
    BasicColor@ basicColor_ColorChangeEvent;

    // Java field initializers run after the super constructor
    void jfields_ColorChangeEvent()
    {
    @this.basicColor_ColorChangeEvent = BasicColorFactory::getInstance().WHITE;
    }
    

    ColorChangeEvent@ jinit_ColorChangeEvent(JObject@ anyType)
    {
        this.jinit_AllBinaryEventObject(anyType);
        this.jfields_ColorChangeEvent();
        return this;
    }
    

    void setBasicColorP(BasicColor@ basicColor)
    {
        @this.basicColor_ColorChangeEvent = basicColor;
    }
    

    BasicColor@ getBasicColorP()
    {
        return this.basicColor_ColorChangeEvent;
    }
}

