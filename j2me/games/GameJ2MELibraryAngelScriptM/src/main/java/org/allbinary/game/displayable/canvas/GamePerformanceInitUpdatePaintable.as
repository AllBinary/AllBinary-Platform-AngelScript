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

class GamePerformanceInitUpdatePaintable : InitUpdatePaintable, UpdateMyFontInterface
{
    int halfHeight_GamePerformanceInitUpdatePaintable;
    int[]@ yArray_GamePerformanceInitUpdatePaintable;
    MyFontProcessor@ myFontProcessor_GamePerformanceInitUpdatePaintable;
    uint16[]@[]@ baseRefreshHelperCharArray_GamePerformanceInitUpdatePaintable;
    int defaultStringWidth_GamePerformanceInitUpdatePaintable;
    int RED_GamePerformanceInitUpdatePaintable;

    // Java field initializers run after the super constructor
    void jfields_GamePerformanceInitUpdatePaintable()
    {
    this.halfHeight_GamePerformanceInitUpdatePaintable = DisplayInfoSingleton::getInstance().getLastHalfHeight();
    @this.yArray_GamePerformanceInitUpdatePaintable = array<int> = {this.halfHeight_GamePerformanceInitUpdatePaintable + 30, this.halfHeight_GamePerformanceInitUpdatePaintable + 30, this.halfHeight_GamePerformanceInitUpdatePaintable + 30 + 15, this.halfHeight_GamePerformanceInitUpdatePaintable + 30 + 15, this.halfHeight_GamePerformanceInitUpdatePaintable + 30 + 30, this.halfHeight_GamePerformanceInitUpdatePaintable + 30 + 30, this.halfHeight_GamePerformanceInitUpdatePaintable + 30 + 45, this.halfHeight_GamePerformanceInitUpdatePaintable + 30 + 45};
    @this.myFontProcessor_GamePerformanceInitUpdatePaintable = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.baseRefreshHelperCharArray_GamePerformanceInitUpdatePaintable = jnewArray2_Char(0, 0);
    
    this.RED_GamePerformanceInitUpdatePaintable = BasicColorFactory::getInstance().RED.intValue();
    }

    GamePerformanceInitUpdatePaintable@ jinit_GamePerformanceInitUpdatePaintable()
    {
        this.jinit_InitUpdatePaintable();
        this.jfields_GamePerformanceInitUpdatePaintable();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.defaultStringWidth_GamePerformanceInitUpdatePaintable = MyFontProcessor::defaultStringWidth(font, 2);
        @this.myFontProcessor_GamePerformanceInitUpdatePaintable = MyFontProcessor::getInstance();
    }
    

    void init()
    {
    }
    

    void update()
    {
        @this.baseRefreshHelperCharArray_GamePerformanceInitUpdatePaintable = GameStatisticsFactory::getInstance().to2DCharArray();
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor_GamePerformanceInitUpdatePaintable.process(graphics);
        graphics.setColor(this.RED_GamePerformanceInitUpdatePaintable);
        uint16[]@ charArray;
        uint16[]@ charArray2;
        int size2 = 0;
        int size3 = 0;
        int size = int(this.baseRefreshHelperCharArray_GamePerformanceInitUpdatePaintable.length()) - 2;
        for (int index = size; index >= 0; index -= 2) {
            @charArray = this.baseRefreshHelperCharArray_GamePerformanceInitUpdatePaintable[index];
            @charArray2 = this.baseRefreshHelperCharArray_GamePerformanceInitUpdatePaintable[index + 1];
            size2 = int(charArray.length());
            size3 = int(charArray2.length());
            graphics.drawChars(charArray, 0, size2, 0, this.yArray_GamePerformanceInitUpdatePaintable[index], 0);
            graphics.drawChars(charArray2, 0, size3, size2 * this.defaultStringWidth_GamePerformanceInitUpdatePaintable, this.yArray_GamePerformanceInitUpdatePaintable[index + 1], 0);
        }
    }
}

