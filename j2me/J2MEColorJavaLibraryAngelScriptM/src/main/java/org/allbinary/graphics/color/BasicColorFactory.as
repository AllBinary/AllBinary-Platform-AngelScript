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

class BasicColorFactory : JObjectBase
{
    BasicColor@ NULL_COLOR;
    BasicColor@ TAN;
    BasicColor@ SKIN_PINK;
    BasicColor@ RED;
    BasicColor@ LIGHT_RED;
    BasicColor@ DARK_GREEN;
    BasicColor@ GREEN;
    BasicColor@ LIGHT_GREEN;
    BasicColor@ PURPLE;
    BasicColor@ BLUE;
    BasicColor@ LIGHT_BLUE;
    BasicColor@ VERY_LIGHT_BLUE;
    BasicColor@ PUCE;
    BasicColor@ AQUA;
    BasicColor@ YELLOW;
    BasicColor@ PINK;
    BasicColor@ BLACK;
    BasicColor@ GREY;
    BasicColor@ LIGHT_GREY;
    BasicColor@ DARK_GREY;
    BasicColor@ ORANGE;
    BasicColor@ BROWN;
    BasicColor@ WHITE;
    BasicColor@ TRANSPARENT_COLOR;
    BasicColor@ TRANSPARENT_GREY;
    BasicColor@ TRANSPARENT_BLACK;
    BasicColor@ TRANSPARENT_RED;
    BasicColor@ CLEAR_COLOR;
    BasicColor@ BORDER_COLOR;

    // Java field initializers run after the super constructor
    void jfields_BasicColorFactory()
    {
    @this.NULL_COLOR = this.createInstanceARGB(255, 255, 255, 255, "null color");
    @this.TAN = this.createInstance(0xE9D8B5);
    @this.SKIN_PINK = this.createInstance(0xFDCECE);
    @this.RED = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0xFF0000, "red");
    @this.LIGHT_RED = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0xFFA0A0, "light red");
    @this.DARK_GREEN = this.createInstance(0x00FF00);
    @this.GREEN = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0x00DD00, "green");
    @this.LIGHT_GREEN = this.createInstance(0x007700);
    @this.PURPLE = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0x400040, "purple");
    @this.BLUE = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0x0000FF, "blue");
    @this.LIGHT_BLUE = this.createInstance(0x00aaff);
    @this.VERY_LIGHT_BLUE = this.createInstance(0x000033);
    @this.PUCE = this.createInstance(0xFF00AA);
    @this.AQUA = this.createInstance(0x00FFFF);
    @this.YELLOW = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0xFFFF00, "yellow");
    @this.PINK = this.createInstance(0xFF00FF);
    @this.BLACK = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0x000000, "black");
    @this.GREY = this.createInstanceAN(BasicColorUtil::getInstance().ALPHA, 0xAAAAAA, "grey");
    @this.LIGHT_GREY = this.createInstance(0xC0C0C0);
    @this.DARK_GREY = this.createInstance(0x404040);
    @this.ORANGE = this.createInstance(0xe07718);
    @this.BROWN = this.createInstance(0x956B00);
    @this.WHITE = this.createInstance(0xFFFFFF);
    @this.TRANSPARENT_COLOR = this.createInstanceAN(0x00000000, 0x000000, StringUtil::getInstance().EMPTY_STRING);
    @this.TRANSPARENT_GREY = this.createInstanceAN(0x52000000, 0xECECEC, StringUtil::getInstance().EMPTY_STRING);
    @this.TRANSPARENT_BLACK = this.createInstanceAN(0x52000000, 0x000000, StringUtil::getInstance().EMPTY_STRING);
    @this.TRANSPARENT_RED = this.createInstanceAN(0x52000000, 0xFF0000, StringUtil::getInstance().EMPTY_STRING);
    @this.CLEAR_COLOR = this.BLACK;
    @this.BORDER_COLOR = this.WHITE;
    }

    BasicColorFactory@ jinit_BasicColorFactory()
    {
        this.jfields_BasicColorFactory();
        return this;
    }
    

    BasicColor@ createInstance(int value)
    {
        return BasicColor().jinit_BasicColor(BasicColorUtil::getInstance().ALPHA, value, StringUtil::getInstance().EMPTY_STRING);
    }
    

    BasicColor@ createInstanceA(int alphaValue, int value)
    {
        return BasicColor().jinit_BasicColor(alphaValue, value, StringUtil::getInstance().EMPTY_STRING);
    }
    

    BasicColor@ createInstanceAN(int alphaValue, int value, string name)
    {
        return BasicColor().jinit_BasicColor(alphaValue, value, name);
    }
    

    BasicColor@ createInstanceARGB(int alphaValue, int r, int g, int b, string name)
    {
        int ALPHA_MASK = int(0xFF000000);
        return BasicColor().jinit_BasicColor(alphaValue, ((alphaValue << 24) & ALPHA_MASK) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF), StringUtil::getInstance().EMPTY_STRING);
    }
}

namespace BasicColorFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicColorFactory().jinit_BasicColorFactory();
    }

    BasicColorFactory@ jcell_instance;
    BasicColorFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicColorFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicColorFactory@ getInstance()
    {
        return BasicColorFactory::instance;
    }
}

