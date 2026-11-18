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
// package org.allbinary.game.ag.layer.hud.basic

class NumberStringHud : BasicHud, PaintableInterface
{
    PrimitiveLongUtil@ primitiveLongUtil_NumberStringHud;
    string prependString_NumberStringHud;
    uint16[]@ PREPEND_STRING_NumberStringHud;
    int value_NumberStringHud;
    int max_NumberStringHud;
    int offset_NumberStringHud;
    uint16[]@ valueString_NumberStringHud;
    int valueTotalDigits_NumberStringHud;
    

    NumberStringHud@ jinit_NumberStringHud(string prependString, int max, int location, int direction, int bufferZone, BasicColor@ basicColor)
    {
        this.jinit_BasicHud(location, direction, bufferZone, basicColor);
        this.prependString_NumberStringHud = prependString;
        @this.PREPEND_STRING_NumberStringHud = String::toCharArray(prependString);
        @this.valueString_NumberStringHud = PrimitiveLongSingleton::getInstance().NUMBER_CHAR_ARRAYS[0];
        @this.primitiveLongUtil_NumberStringHud = PrimitiveLongUtil::createPowerOfTen(max + 1);
        this.max_NumberStringHud = max;
        this.value_NumberStringHud = 0;
        if (direction == 0) {
            jthrow(RuntimeException().jinit_RuntimeException(BasicHudFactory::getInstance().DIRECTION_EXCEPTION));
        }
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.offset_NumberStringHud = font.stringWidth(this.prependString_NumberStringHud) + MyFontProcessor::defaultCharWidth(font);
        BasicHud::updateMeasurement(graphics);
    }
    

    int get()
    {
        return this.value_NumberStringHud;
    }
    

    void add(int value)
    {
        this.set(this.value_NumberStringHud + value);
    }
    

    void set(int value)
    {
        this.value_NumberStringHud = value;
        if (this.value_NumberStringHud > this.max_NumberStringHud) {
            this.value_NumberStringHud = 0;
        }
        @this.valueString_NumberStringHud = this.primitiveLongUtil_NumberStringHud.getCharArray(this.value_NumberStringHud);
        this.valueTotalDigits_NumberStringHud = this.primitiveLongUtil_NumberStringHud.getCurrentTotalDigits();
    }
    

    void reduce(int value)
    {
        this.set(this.value_NumberStringHud - value);
    }
    

    void paint(Graphics@ graphics)
    {
        BasicHud::paintDX(graphics, this.PREPEND_STRING_NumberStringHud, 0, int(this.PREPEND_STRING_NumberStringHud.length()), this.valueString_NumberStringHud, 0, this.valueTotalDigits_NumberStringHud, this.offset_NumberStringHud);
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
        this.myFontProcessor.process(graphics);
        uint16[]@ charArray = this.PREPEND_STRING_NumberStringHud;
        int len = int(this.PREPEND_STRING_NumberStringHud.length());
        uint16[]@ charArray2 = this.valueString_NumberStringHud;
        int len2 = this.valueTotalDigits_NumberStringHud;
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawChars(charArray, 0, len, x, y, 0);
        graphics.drawChars(charArray2, 0, len2, x - this.offset_NumberStringHud, y, 0);
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
}

