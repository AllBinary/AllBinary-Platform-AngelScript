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
// package org.allbinary.input.motion

class AllMotionRecognizer : JObjectBase
{
    int id_AllMotionRecognizer;
    

    AllMotionRecognizer@ jinit_AllMotionRecognizer()
    {
        this.id_AllMotionRecognizer = AllMotionRecognizer::jpostAdd_index(1);
        return this;
    }
    

    void processStartMotionEvent(int x, int y, int deviceId, int modifiers)
    {
    }
    

    void processEndMotionEvent(int x, int y, int deviceId, int modifiers)
    {
    }
    

    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers)
    {
    }
    

    void processMovedMotionEvent(int x, int y, int deviceId, int modifiers)
    {
    }
    

    void processScrolledMotionEvent(int x, int y, int deviceId, int modifiers)
    {
    }
    

    int getId()
    {
        return this.id_AllMotionRecognizer;
    }
}

namespace AllMotionRecognizer
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        jcell_index = 0;
    }

    int jcell_index;
    int get_index() property { jclinit(); return jcell_index; }
    void set_index(int value) property { jclinit(); jcell_index = value; }
    int jpostAdd_index(int delta) { jclinit(); int old = jcell_index; jcell_index = int(old + delta); return old; }
}

