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
// package org.allbinary.image

class PaintableToImageUtil : JObjectBase
{

    PaintableToImageUtil@ jinit_PaintableToImageUtil()
    {
        return this;
    }
}

namespace PaintableToImageUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PaintableToImageUtil().jinit_PaintableToImageUtil();
    }

    PaintableToImageUtil@ jcell_instance;
    PaintableToImageUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PaintableToImageUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    Image@ getImage(PaintableInterface@ paintableInterface, int width, int height)
    {
        Image@ image = GameFeatureImageCacheFactory::getInstance().get(jClassName(PaintableToImageUtil::instance), width, height);
        Graphics@ graphics = image.getGraphics();
        paintableInterface.paint(graphics);
        return image;
    }
}

