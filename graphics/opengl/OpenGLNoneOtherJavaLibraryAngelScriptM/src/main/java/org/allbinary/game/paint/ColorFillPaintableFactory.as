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
// package org.allbinary.game.paint

class ColorFillPaintableFactory : JObjectBase
{

    ColorFillPaintableFactory@ jinit_ColorFillPaintableFactory()
    {
        return this;
    }
    

    ColorFillBasePaintable@ getInstance(BasicColor@ basicColor, bool forThreedCanvas)
    {
        GenericOperatingSystem@ operatingSystem = OperatingSystemFactory::getInstance().getOperatingSystemInstance();
        if (operatingSystem.isOverScan()) {
            return OverScanColorFillPaintable().jinit_OverScanColorFillPaintable(basicColor);
        } else {
            return ColorFillPaintable().jinit_ColorFillPaintable(basicColor);
        }
        return null;
    }
}

namespace ColorFillPaintableFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ColorFillPaintableFactory().jinit_ColorFillPaintableFactory();
    }

    ColorFillPaintableFactory@ jcell_instance;
    ColorFillPaintableFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ColorFillPaintableFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    ColorFillPaintableFactory@ getInstance_jstatic()
    {
        return ColorFillPaintableFactory::instance;
    }
}

