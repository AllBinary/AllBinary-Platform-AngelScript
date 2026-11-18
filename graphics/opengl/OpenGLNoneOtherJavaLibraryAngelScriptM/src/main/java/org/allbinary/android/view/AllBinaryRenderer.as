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
// package org.allbinary.android.view

class AllBinaryRenderer : JObjectBase
{

    AllBinaryRenderer@ jinit_AllBinaryRenderer()
    {
        return this;
    }
    

    void setRunnable(Runnable@ runnable)
    {
    }
    

    void clearRunnable()
    {
    }
}

namespace AllBinaryRenderer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = AllBinaryRenderer().jinit_AllBinaryRenderer();
    }

    AllBinaryRenderer@ jcell_instance;
    AllBinaryRenderer@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(AllBinaryRenderer@ value) property { jclinit(); @jcell_instance = value; }
    

    AllBinaryRenderer@ getInstance()
    {
        return AllBinaryRenderer::instance;
    }
}

