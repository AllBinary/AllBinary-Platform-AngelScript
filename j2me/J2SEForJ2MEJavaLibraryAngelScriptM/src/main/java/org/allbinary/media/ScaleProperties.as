/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media

class ScaleProperties : JObjectBase
{
    float scaleX;
    float scaleY;
    int scaleWidth;
    int scaleHeight;
    bool shouldScale;

    ScaleProperties@ jinit_ScaleProperties()
    {
        return this;
    }
    

    string toString()
    {
        return StringMaker().jinit_StringMaker().append(CommonLabels::getInstance().COLON_SEP).appendboolean(this.shouldScale).append("scaleX: ").appendfloat(this.scaleX).append("scaleY: ").appendfloat(this.scaleY).append("scaleWidth: ").appendint(this.scaleWidth).append("scaleHeight: ").appendint(this.scaleHeight).toString();
    }
}

namespace ScaleProperties
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ScaleProperties().jinit_ScaleProperties();
    }

    ScaleProperties@ jcell_instance;
    ScaleProperties@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ScaleProperties@ value) property { jclinit(); @jcell_instance = value; }
}

