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

class FormUtil : JObjectBase
{

    FormUtil@ jinit_FormUtil()
    {
        return this;
    }
    

    Rectangle@ createFormRectangle()
    {
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        PointFactory@ pointFactory = PointFactory::getInstance();
        Rectangle@ rectangle = Rectangle().jinit_Rectangle(pointFactory.createXY(30, 10), displayInfo.getLastWidth() - 30, displayInfo.getLastHeight() - 35);
        return rectangle;
    }
}

namespace FormUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = FormUtil().jinit_FormUtil();
    }

    FormUtil@ jcell_instance;
    FormUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(FormUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    FormUtil@ getInstance()
    {
        return FormUtil::instance;
    }
}

