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
    DisplayInfoSingleton@ displayInfoSingleton_GameTickDisplayInfoSingleton;
    int lastWidth_GameTickDisplayInfoSingleton;
    int lastHeight_GameTickDisplayInfoSingleton;
    int lastHalfWidth_GameTickDisplayInfoSingleton;
    int lastHalfHeight_GameTickDisplayInfoSingleton;

    // Java field initializers run after the super constructor
    void jfields_GameTickDisplayInfoSingleton()
    {
    @this.displayInfoSingleton_GameTickDisplayInfoSingleton = DisplayInfoSingleton::getInstance();
    this.lastWidth_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastWidth();
    this.lastHeight_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastHeight();
    this.lastHalfWidth_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastHalfWidth();
    this.lastHalfHeight_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastHalfHeight();
    }

    GameTickDisplayInfoSingleton@ jinit_GameTickDisplayInfoSingleton()
    {
        this.jfields_GameTickDisplayInfoSingleton();
        return this;
    }
    

    void update()
    {
        this.lastWidth_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastWidth();
        this.lastHeight_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastHeight();
        this.lastHalfWidth_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastHalfWidth();
        this.lastHalfHeight_GameTickDisplayInfoSingleton = this.displayInfoSingleton_GameTickDisplayInfoSingleton.getLastHalfHeight();
    }
    

    int getLastWidth()
    {
        return this.lastWidth_GameTickDisplayInfoSingleton;
    }
    

    int getLastHeight()
    {
        return this.lastHeight_GameTickDisplayInfoSingleton;
    }
    

    int getLastHalfWidth()
    {
        return this.lastHalfWidth_GameTickDisplayInfoSingleton;
    }
    

    int getLastHalfHeight()
    {
        return this.lastHalfHeight_GameTickDisplayInfoSingleton;
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

