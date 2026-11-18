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

class BasicColorSetUtil : JObjectBase
{
    

    BasicColorSetUtil@ jinit_BasicColorSetUtil()
    {
        return this;
    }
    

    void setBasicColorP(Graphics@ graphics, BasicColor@ basicColor)
    {
        graphics.setColor(basicColor.intValue());
    }
    

    void setBasicColorP3(Graphics@ graphics, BasicColor@ basicColor, int value)
    {
        graphics.setColor(value);
    }
}

namespace BasicColorSetUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BasicColorSetUtil().jinit_BasicColorSetUtil();
    }

    BasicColorSetUtil@ jcell_instance;
    BasicColorSetUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BasicColorSetUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    BasicColorSetUtil@ getInstance()
    {
        return BasicColorSetUtil::instance;
    }
}

