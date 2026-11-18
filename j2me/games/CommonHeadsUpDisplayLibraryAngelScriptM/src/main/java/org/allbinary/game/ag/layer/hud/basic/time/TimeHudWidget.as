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
// package org.allbinary.game.ag.layer.hud.basic.time

class TimeHudWidget : BasicHud
{
    string TIME_STRING_TimeHudWidget;
    uint16[]@ TIME_CHAR_ARRAY_TimeHudWidget;
    int offset_TimeHudWidget;
    uint16[]@ string__TimeHudWidget;
    int totalDigits_TimeHudWidget;
    HudTimer@ timer_TimeHudWidget;

    // Java field initializers run after the super constructor
    void jfields_TimeHudWidget()
    {
    this.TIME_STRING_TimeHudWidget = "Time ";
    @this.TIME_CHAR_ARRAY_TimeHudWidget = array<uint16> = {uint16('T'), uint16('i'), uint16('m'), uint16('e'), uint16(' ')};
    
    @this.string__TimeHudWidget = PrimitiveLongSingleton::getInstance().ZERO;
    this.totalDigits_TimeHudWidget = 1;
    
    }
    

    TimeHudWidget@ jinit_TimeHudWidget(int location, int direction, int bufferZone, BasicColor@ basicColor, HudTimer@ timer)
    {
        this.jinit_BasicHud(location, direction, bufferZone, basicColor);
        this.jfields_TimeHudWidget();
        @this.timer_TimeHudWidget = timer;
        this.set();
        this.updateMaxHeight = 14;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        this.offset_TimeHudWidget = font.stringWidth(this.TIME_STRING_TimeHudWidget) + MyFontProcessor::defaultStringWidth(font, 3);
        BasicHud::updateMeasurement(graphics);
    }
    

    void update()
    {
        this.timer_TimeHudWidget.update();
        this.set();
    }
    

    void set()
    {
        @this.string__TimeHudWidget = this.timer_TimeHudWidget.getTimeChars();
        this.totalDigits_TimeHudWidget = this.timer_TimeHudWidget.getCurrentTotalDigits();
    }
    

    HudTimer@ getTimer()
    {
        return this.timer_TimeHudWidget;
    }
    

    void paint(Graphics@ graphics)
    {
        BasicHud::paintDX(graphics, this.TIME_CHAR_ARRAY_TimeHudWidget, 0, int(this.TIME_CHAR_ARRAY_TimeHudWidget.length()), this.string__TimeHudWidget, 0, this.totalDigits_TimeHudWidget, this.offset_TimeHudWidget);
    }
}

namespace TimeHudWidget
{
    

    TimeHudWidget@ getInstance(int location, int direction, BasicColor@ basicColor, HudTimer@ timer)
    {
        return TimeHudWidget().jinit_TimeHudWidget(location, direction, 2, basicColor, timer);
    }
}

