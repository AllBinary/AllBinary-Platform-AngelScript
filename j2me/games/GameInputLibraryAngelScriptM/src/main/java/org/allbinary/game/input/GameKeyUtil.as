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
// package org.allbinary.game.input

class GameKeyUtil : JObjectBase
{

    GameKeyUtil@ jinit_GameKeyUtil()
    {
        return this;
    }
    

    bool isDirectionKey(int key)
    {
        if (key == Canvas::UP || key == Canvas::DOWN || key == Canvas::LEFT || key == Canvas::RIGHT) {
            return true;
        } else {
            return false;
        }
        return false;
    }
}

namespace GameKeyUtil
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = GameKeyUtil().jinit_GameKeyUtil();
    }

    GameKeyUtil@ jcell_instance;
    GameKeyUtil@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(GameKeyUtil@ value) property { jclinit(); @jcell_instance = value; }
    

    GameKeyUtil@ getInstance()
    {
        return GameKeyUtil::instance;
    }
}

