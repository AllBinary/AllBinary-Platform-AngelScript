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
// package org.allbinary.canvas

class SpecialMessageUtil : JObjectBase
{

    SpecialMessageUtil@ jinit_SpecialMessageUtil()
    {
        return this;
    }
    

    string get()
    {
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(Memory::getInfo());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(GameStatisticsFactory::getInstance().toString());
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(" Option: ");
        if (Features::getInstance().isDefault(OpenGLFeatureFactory::getInstance().OPENGL_AUTO_SELECT)) {
            stringBuffer.append(OpenGLFeatureFactory::getInstance().OPENGL_AUTO_SELECT.getName());
        } else {
            stringBuffer.append(OpenGLFeatureFactory::getInstance().OPENGL_MINIMUM.getName());
        }
        return stringBuffer.toString();
    }
}

namespace SpecialMessageUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_SINGLETON = SpecialMessageUtil().jinit_SpecialMessageUtil();
    }

    SpecialMessageUtil@ jcell_SINGLETON;
    SpecialMessageUtil@ get_SINGLETON() property { jclinit(); return jcell_SINGLETON; }
    void set_SINGLETON(SpecialMessageUtil@ value) property { jclinit(); @jcell_SINGLETON = value; }
    

    SpecialMessageUtil@ getInstance()
    {
        return SpecialMessageUtil::SINGLETON;
    }
}

