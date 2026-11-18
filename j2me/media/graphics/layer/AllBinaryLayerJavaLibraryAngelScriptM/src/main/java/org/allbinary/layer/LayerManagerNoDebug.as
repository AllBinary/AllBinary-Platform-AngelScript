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
// package org.allbinary.layer

class LayerManagerNoDebug : LayerManagerLoggingBase
{

    LayerManagerNoDebug@ jinit_LayerManagerNoDebug()
    {
        this.jinit_LayerManagerLoggingBase();
        return this;
    }
}

namespace LayerManagerNoDebug
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = LayerManagerNoDebug().jinit_LayerManagerNoDebug();
    }

    LayerManagerNoDebug@ jcell_instance;
    LayerManagerNoDebug@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(LayerManagerNoDebug@ value) property { jclinit(); @jcell_instance = value; }
    

    LayerManagerNoDebug@ getInstance()
    {
        return LayerManagerNoDebug::instance;
    }
}

