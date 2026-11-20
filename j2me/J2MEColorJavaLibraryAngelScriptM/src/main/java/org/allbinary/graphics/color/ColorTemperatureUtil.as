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

class ColorTemperatureUtil : JObjectBase
{
    BasicColorFactory@ basicColorFactory_ColorTemperatureUtil;

    // Java field initializers run after the super constructor
    void jfields_ColorTemperatureUtil()
    {
    @this.basicColorFactory_ColorTemperatureUtil = BasicColorFactory::getInstance();
    }

    ColorTemperatureUtil@ jinit_ColorTemperatureUtil()
    {
        this.jfields_ColorTemperatureUtil();
        return this;
    }
    

    BasicColor@ getBasicColor(int thirdTemp)
    {
        BasicColor@ basicColor = this.basicColorFactory_ColorTemperatureUtil.RED;
        if (thirdTemp > 3700) {
            @basicColor = this.basicColorFactory_ColorTemperatureUtil.PURPLE;
        } else if (thirdTemp > 3200) {
            @basicColor = this.basicColorFactory_ColorTemperatureUtil.BLUE;
        } else if (thirdTemp > 2700) {
            @basicColor = this.basicColorFactory_ColorTemperatureUtil.PUCE;
        } else if (thirdTemp > 2200) {
            @basicColor = this.basicColorFactory_ColorTemperatureUtil.WHITE;
        } else if (thirdTemp > 1700) {
            @basicColor = this.basicColorFactory_ColorTemperatureUtil.GREEN;
        } else if (thirdTemp > 1200) {
            @basicColor = this.basicColorFactory_ColorTemperatureUtil.YELLOW;
        } else if (thirdTemp > 700) {
            @basicColor = this.basicColorFactory_ColorTemperatureUtil.ORANGE;
        }
        return basicColor;
    }
}

namespace ColorTemperatureUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ColorTemperatureUtil().jinit_ColorTemperatureUtil();
    }

    ColorTemperatureUtil@ jcell_instance;
    ColorTemperatureUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ColorTemperatureUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ColorTemperatureUtil@ getInstance()
    {
        return ColorTemperatureUtil::instance;
    }
}

