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

class PreResourceImageUtil : JObjectBase
{

    PreResourceImageUtil@ jinit_PreResourceImageUtil()
    {
        return this;
    }
    

    Image@ encapsulate(Image@ image)
    {
        return image;
    }
    

    void updateGL(GL@ gl, Image@ image)
    {
    }
    

    void update(Graphics@ graphics, Image@ image)
    {
    }
}

namespace PreResourceImageUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = PreResourceImageUtil().jinit_PreResourceImageUtil();
    }

    PreResourceImageUtil@ jcell_instance;
    PreResourceImageUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(PreResourceImageUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    PreResourceImageUtil@ getInstance()
    {
        return PreResourceImageUtil::instance;
    }
}

