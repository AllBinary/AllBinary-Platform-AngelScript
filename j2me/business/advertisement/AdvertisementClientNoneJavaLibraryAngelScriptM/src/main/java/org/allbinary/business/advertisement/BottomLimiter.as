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
// package org.allbinary.business.advertisement

class BottomLimiter : JObjectBase
{
    int bottom_BottomLimiter;
    int deltaY_BottomLimiter;
    int lower_BottomLimiter;
    int higher_BottomLimiter;
    

    BottomLimiter@ jinit_BottomLimiter()
    {
        return this;
    }
    

    void init(int lower, int higher)
    {
        this.lower_BottomLimiter = lower;
        this.higher_BottomLimiter = higher;
    }
    

    void update()
    {
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        GameAdState@ gameAdState = GameAdStateFactory::getInstance().getCurrentInstance();
        if (gameAdState.isShowingAt()) {
            this.deltaY_BottomLimiter = this.higher_BottomLimiter;
        } else {
            this.deltaY_BottomLimiter = this.lower_BottomLimiter;
        }
        this.bottom_BottomLimiter = displayInfo.getLastHeight() - this.deltaY_BottomLimiter;
    }
    

    int getDeltaY()
    {
        return this.deltaY_BottomLimiter;
    }
    

    int getBottom()
    {
        return this.bottom_BottomLimiter;
    }
}

namespace BottomLimiter
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BottomLimiter().jinit_BottomLimiter();
    }

    BottomLimiter@ jcell_instance;
    BottomLimiter@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BottomLimiter@ value) property { jclinit(); @jcell_instance = value; }
    

    BottomLimiter@ getInstance()
    {
        return BottomLimiter::instance;
    }
}

