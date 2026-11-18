/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

class PropertyInitUtil : JObjectBase
{

    PropertyInitUtil@ jinit_PropertyInitUtil()
    {
        return this;
    }
}

namespace PropertyInitUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PropertyInitUtil().jinit_PropertyInitUtil();
    }

    PropertyInitUtil@ jcell_instance;
    PropertyInitUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PropertyInitUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    PropertyInitUtil@ getInstance(int value)
    {
        CommonStrings@ commonStrings = CommonStrings::getInstance();
        LogUtil@ logUtil = LogUtil::getInstance();
        logUtil.putF(StringMaker().jinit_StringMaker().append("PropertyInitUtil: ").appendint(value).toString(), logUtil, commonStrings.CONSTRUCTOR);
        return PropertyInitUtil::instance;
    }
}

