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
// package org.allbinary.graphics.displayable

class GameTickDisplayInfoSingleton : JObjectBase
{
    DisplayInfoSingleton@ displayInfoSingleton;
    int lastWidth;
    int lastHeight;
    int lastHalfWidth;
    int lastHalfHeight;

    // Java field initializers run after the super constructor
    void jfields_GameTickDisplayInfoSingleton()
    {
    @this.displayInfoSingleton = DisplayInfoSingleton::getInstance();
    this.lastWidth = this.displayInfoSingleton.getLastWidth();
    this.lastHeight = this.displayInfoSingleton.getLastHeight();
    this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
    this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
    }

    GameTickDisplayInfoSingleton@ jinit_GameTickDisplayInfoSingleton()
    {
        this.jfields_GameTickDisplayInfoSingleton();
        return this;
    }
    

    void update()
    {
        this.lastWidth = this.displayInfoSingleton.getLastWidth();
        this.lastHeight = this.displayInfoSingleton.getLastHeight();
        this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
        this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
    }
    

    int getLastWidth()
    {
        return this.lastWidth;
    }
    

    int getLastHeight()
    {
        return this.lastHeight;
    }
    

    int getLastHalfWidth()
    {
        return this.lastHalfWidth;
    }
    

    int getLastHalfHeight()
    {
        return this.lastHalfHeight;
    }
}

namespace GameTickDisplayInfoSingleton
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameTickDisplayInfoSingleton().jinit_GameTickDisplayInfoSingleton();
    }

    GameTickDisplayInfoSingleton@ jcell_instance;
    GameTickDisplayInfoSingleton@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameTickDisplayInfoSingleton@ value) property { jclinit(); @jcell_instance = value; }
    

    GameTickDisplayInfoSingleton@ getInstance()
    {
        return GameTickDisplayInfoSingleton::instance;
    }
}

