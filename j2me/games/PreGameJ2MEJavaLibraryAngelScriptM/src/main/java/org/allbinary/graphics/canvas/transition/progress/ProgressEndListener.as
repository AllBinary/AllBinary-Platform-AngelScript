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
// package org.allbinary.graphics.canvas.transition.progress

class ProgressEndListener : JObjectBase
{

    ProgressEndListener@ jinit_ProgressEndListener()
    {
        return this;
    }
    

    void onEndEvent()
    {
    }
}

namespace ProgressEndListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = ProgressEndListener().jinit_ProgressEndListener();
    }

    ProgressEndListener@ jcell_instance;
    ProgressEndListener@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(ProgressEndListener@ value) property { jclinit(); @jcell_instance = value; }
}

