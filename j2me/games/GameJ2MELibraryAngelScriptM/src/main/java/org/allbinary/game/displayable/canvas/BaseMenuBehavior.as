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

class BaseMenuBehavior : JObjectBase
{

    BaseMenuBehavior@ jinit_BaseMenuBehavior()
    {
        return this;
    }
    

    void onDisplayChangeEvent(AllBinaryGameCanvas@ allBinaryGameCanvas, DisplayChangeEvent@ displayChangeEvent)
    {
    }
    

    void initSpecialPaint(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable::getInstance());
    }
    

    void initMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void updateMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void popupMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
    

    void closeMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
    }
}

namespace BaseMenuBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instance = BaseMenuBehavior().jinit_BaseMenuBehavior();
    }

    BaseMenuBehavior@ jcell_instance;
    BaseMenuBehavior@ get_instance() property { jclinit(); return jcell_instance; }
    void set_instance(BaseMenuBehavior@ value) property { jclinit(); @jcell_instance = value; }
    

    BaseMenuBehavior@ getInstance()
    {
        return BaseMenuBehavior::instance;
    }
}

