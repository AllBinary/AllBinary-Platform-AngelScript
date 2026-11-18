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
// package org.allbinary.game.displayable.canvas

class NullWaitGameRunnable : GameRunnable
{

    NullWaitGameRunnable@ jinit_NullWaitGameRunnable()
    {
        this.jinit_GameRunnable();
        return this;
    }
}

namespace NullWaitGameRunnable
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = NullWaitGameRunnable().jinit_NullWaitGameRunnable();
    }

    GameRunnable@ jcell_instance;
    GameRunnable@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameRunnable@ value) property { jclinit(); @jcell_instance = value; }
    

    GameRunnable@ getInstance()
    {
        return NullWaitGameRunnable::instance;
    }
}

