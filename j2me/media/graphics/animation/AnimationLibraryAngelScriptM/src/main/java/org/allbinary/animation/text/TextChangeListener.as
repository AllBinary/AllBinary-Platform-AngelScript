/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.animation.text

class TextChangeListener : JObjectBase
{

    TextChangeListener@ jinit_TextChangeListener()
    {
        return this;
    }
    

    void onMeasure()
    {
    }
}

namespace TextChangeListener
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = TextChangeListener().jinit_TextChangeListener();
    }

    TextChangeListener@ jcell_instance;
    TextChangeListener@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(TextChangeListener@ value) property { jclinit(); @jcell_instance = value; }
    

    TextChangeListener@ getInstance()
    {
        return TextChangeListener::instance;
    }
}

