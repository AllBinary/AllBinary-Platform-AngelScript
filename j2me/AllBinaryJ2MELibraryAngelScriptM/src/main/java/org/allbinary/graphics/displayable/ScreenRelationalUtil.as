// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable

class ScreenRelationalUtil : JObjectBase
{

    ScreenRelationalUtil@ jinit_ScreenRelationalUtil()
    {
        return this;
    }
    

    float getScaleImage(Image@ image)
    {
        return this.getScaleWH(image.getWidth(), image.getHeight());
    }
    

    float getScaleWH(int aWidth, int aHeight)
    {
        return this.getScaleWHA(aWidth, aHeight, 20);
    }
    

    float getScaleWHA(int aWidth, int aHeight, int add)
    {
        DisplayInfoSingleton@ displayInfoSingleton = DisplayInfoSingleton::getInstance();
        int[]@ last = displayInfoSingleton.getLast();
        float width = float(last[displayInfoSingleton.WIDTH]);
        float height = float(last[displayInfoSingleton.HEIGHT]);
        float largestSize = width;
        if (largestSize < height) {
            largestSize = height;
        }
        float scale = (largestSize) / float(aWidth);
        return scale;
    }
    

    int getScaledHeight(int aWidth, int aHeight)
    {
        return int(jdoubleToInt((this.getScaleWH(aWidth, aHeight) * float(aHeight))));
    }
    

    int getScaledHeightAdd(int aWidth, int aHeight, int add)
    {
        return int(jdoubleToInt((this.getScaleWHA(aWidth, aHeight, add) * float(aHeight))));
    }
}

namespace ScreenRelationalUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ScreenRelationalUtil().jinit_ScreenRelationalUtil();
    }

    ScreenRelationalUtil@ jcell_instance;
    ScreenRelationalUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ScreenRelationalUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    ScreenRelationalUtil@ getInstance()
    {
        return ScreenRelationalUtil::instance;
    }
}

