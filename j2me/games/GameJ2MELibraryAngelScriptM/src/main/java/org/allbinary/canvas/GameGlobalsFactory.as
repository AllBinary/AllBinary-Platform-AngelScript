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
// package org.allbinary.canvas

class GameGlobalsFactory : JObjectBase
{
    bool newCanvas;
    int64 newDisplaybleTime;
    GPoint@ point;

    // Java field initializers run after the super constructor
    void jfields_GameGlobalsFactory()
    {
    this.newCanvas = true;
    this.newDisplaybleTime = int64(Integer::MIN_VALUE);
    @this.point = PointFactory::getInstance().ZERO_ZERO;
    }

    GameGlobalsFactory@ jinit_GameGlobalsFactory()
    {
        this.jfields_GameGlobalsFactory();
        return this;
    }
}

namespace GameGlobalsFactory
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameGlobalsFactory().jinit_GameGlobalsFactory();
    }

    GameGlobalsFactory@ jcell_instance;
    GameGlobalsFactory@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameGlobalsFactory@ value) property { jclinit(); @jcell_instance = value; }
    

    GameGlobalsFactory@ getInstance()
    {
        return GameGlobalsFactory::instance;
    }
}

