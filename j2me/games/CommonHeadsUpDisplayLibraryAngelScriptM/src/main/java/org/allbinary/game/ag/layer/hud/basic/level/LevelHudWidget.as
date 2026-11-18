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
// package org.allbinary.game.ag.layer.hud.basic.level

class LevelHudWidget : BasicHud, PaintableInterface
{
    int level_LevelHudWidget;
    int maxlevel_LevelHudWidget;
    uint16[]@ levelString_LevelHudWidget;
    uint16[]@ levelNumberCharArray_LevelHudWidget;
    int levelNumberTotalDigits_LevelHudWidget;
    int offset_LevelHudWidget;
    PrimitiveLongUtil@ primitiveLongUtil_LevelHudWidget;

    // Java field initializers run after the super constructor
    void jfields_LevelHudWidget()
    {
    
    
    
    @this.levelNumberCharArray_LevelHudWidget = NullUtil::getInstance().NULL_CHAR_ARRAY;
    
    
    
    }
    

    LevelHudWidget@ jinit_LevelHudWidget(int maxlevel, int location, int direction)
    {
        this.jinit_BasicHud(location, direction, 2, BasicColorFactory::getInstance().GREY);
        this.jfields_LevelHudWidget();
        @this.primitiveLongUtil_LevelHudWidget = PrimitiveLongUtil::createPowerOfTen(1000);
        string LEVEL = "Lv ";
        @this.levelString_LevelHudWidget = String::toCharArray(LEVEL);
        this.maxlevel_LevelHudWidget = maxlevel;
        this.level_LevelHudWidget = maxlevel;
        this.update();
        this.updateMaxHeight = 14;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 4;
        this.offset_LevelHudWidget = font.charsWidth(this.levelString_LevelHudWidget, 0, int(this.levelString_LevelHudWidget.length())) + font.getSize();
        BasicHud::updateMeasurement(graphics);
    }
    

    void update()
    {
        @this.levelNumberCharArray_LevelHudWidget = this.primitiveLongUtil_LevelHudWidget.getCharArray(this.level_LevelHudWidget);
        this.levelNumberTotalDigits_LevelHudWidget = this.primitiveLongUtil_LevelHudWidget.getCurrentTotalDigits();
    }
    

    void setLevel(int level)
    {
        this.level_LevelHudWidget = level;
        this.update();
    }
    

    void nextLevel()
    {
        this.level_LevelHudWidget++;
        this.update();
    }
    

    void previousLevel()
    {
        this.level_LevelHudWidget--;
        if (this.level_LevelHudWidget < 0) {
            this.level_LevelHudWidget = 0;
        }
        this.update();
    }
    

    bool isComplete()
    {
        if (this.level_LevelHudWidget <= this.maxlevel_LevelHudWidget) {
            return false;
        } else {
            return true;
        }
        return false;
    }
    

    void paint(Graphics@ graphics)
    {
        BasicHud::paintDX(graphics, this.levelString_LevelHudWidget, 0, int(this.levelString_LevelHudWidget.length()), this.levelNumberCharArray_LevelHudWidget, 0, this.levelNumberTotalDigits_LevelHudWidget, this.offset_LevelHudWidget);
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
}

namespace LevelHudWidget
{
    

    LevelHudWidget@ createHud(int maxlevel, int location, int direction)
    {
        return LevelHudWidget().jinit_LevelHudWidget(maxlevel, location, direction);
    }
}

