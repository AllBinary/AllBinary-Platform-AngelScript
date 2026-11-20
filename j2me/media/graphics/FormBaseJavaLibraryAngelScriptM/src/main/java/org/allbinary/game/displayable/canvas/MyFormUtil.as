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

class MyFormUtil : JObjectBase
{
    LogUtil@ logUtil;
    CommonStrings@ commonStrings_MyFormUtil;
    Rectangle@ popupMenuRectangle_MyFormUtil;

    // Java field initializers run after the super constructor
    void jfields_MyFormUtil()
    {
    @this.logUtil = LogUtil::getInstance();
    @this.commonStrings_MyFormUtil = CommonStrings::getInstance();
    @this.popupMenuRectangle_MyFormUtil = RectangleFactory::SINGLETON;
    }

    MyFormUtil@ jinit_MyFormUtil()
    {
        this.jfields_MyFormUtil();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        Features@ features = Features::getInstance();
        bool isOpenGL = features.isDefault(OpenGLFeatureFactory::getInstance().OPENGL);
        int TOTAL_CHAR_WIDTH = (SWTJOGLProcessor::getInstance().isJOGL() && isOpenGL ? 2 : 3);
        int width = MyFontProcessor::defaultStringWidth(font, TOTAL_CHAR_WIDTH);
        PointFactory@ pointFactory = PointFactory::getInstance();
        if (displayInfo.getLastHeight() < 320) {
            @this.popupMenuRectangle_MyFormUtil = Rectangle().jinit_Rectangle(pointFactory.createXY(0, 25), width, (font.getHeight() * 4) + 2);
        } else {
            @this.popupMenuRectangle_MyFormUtil = Rectangle().jinit_Rectangle(pointFactory.createXY(0, displayInfo.getLastHalfHeight() - 70), width, (font.getHeight() * 5));
        }
    }
    

    Rectangle@ getPopupMenuRectangle()
    {
        return this.popupMenuRectangle_MyFormUtil;
    }
}

namespace MyFormUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = MyFormUtil().jinit_MyFormUtil();
    }

    MyFormUtil@ jcell_instance;
    MyFormUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(MyFormUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    MyFormUtil@ getInstance()
    {
        return MyFormUtil::instance;
    }
}

