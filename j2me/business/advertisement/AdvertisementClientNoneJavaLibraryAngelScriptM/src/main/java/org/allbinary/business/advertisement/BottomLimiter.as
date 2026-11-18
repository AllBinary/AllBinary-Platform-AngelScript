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
    int bottom;
    int deltaY;
    int lower;
    int higher;
    

    BottomLimiter@ jinit_BottomLimiter()
    {
        return this;
    }
    

    void init(int lower, int higher)
    {
        this.lower = lower;
        this.higher = higher;
    }
    

    void update()
    {
        DisplayInfoSingleton@ displayInfo = DisplayInfoSingleton::getInstance();
        GameAdState@ gameAdState = GameAdStateFactory::getInstance().getCurrentInstance();
        if (gameAdState.isShowingAt()) {
            this.deltaY = this.higher;
        } else {
            this.deltaY = this.lower;
        }
        this.bottom = displayInfo.getLastHeight() - this.deltaY;
    }
    

    int getDeltaY()
    {
        return this.deltaY;
    }
    

    int getBottom()
    {
        return this.bottom;
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

