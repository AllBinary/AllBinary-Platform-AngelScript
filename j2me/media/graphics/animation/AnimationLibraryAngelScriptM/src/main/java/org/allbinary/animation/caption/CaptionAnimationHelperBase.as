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
// package org.allbinary.animation.caption

class CaptionAnimationHelperBase : Animation
{

    CaptionAnimationHelperBase@ jinit_CaptionAnimationHelperBase()
    {
        this.jinit_Animation();
        return this;
    }
    

    bool isShowing()
    {
        return false;
    }
    

    void tick()
    {
    }
    

    void update(string message, BasicColor@ basicColor)
    {
    }
    

    void paintXY(Graphics@ graphics, int x, int y)
    {
    }
}

namespace CaptionAnimationHelperBase
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_INSTANCE = CaptionAnimationHelperBase().jinit_CaptionAnimationHelperBase();
    }

    CaptionAnimationHelperBase@ jcell_INSTANCE;
    CaptionAnimationHelperBase@ get_INSTANCE() property { jclinit(); return jcell_INSTANCE; }
    void set_INSTANCE(CaptionAnimationHelperBase@ value) property { jclinit(); @jcell_INSTANCE = value; }
}

