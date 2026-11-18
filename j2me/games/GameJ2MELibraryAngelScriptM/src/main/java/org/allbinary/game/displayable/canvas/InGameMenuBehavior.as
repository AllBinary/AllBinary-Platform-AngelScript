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

class InGameMenuBehavior : BaseMenuBehavior
{

    InGameMenuBehavior@ jinit_InGameMenuBehavior()
    {
        this.jinit_BaseMenuBehavior();
        return this;
    }
    

    void onDisplayChangeEvent(AllBinaryGameCanvas@ allBinaryGameCanvas, DisplayChangeEvent@ displayChangeEvent)
    {
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent);
    }
    

    void initSpecialPaint(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.setNonBotPaintableP(GameCanvasNonBotPaintable().jinit_GameCanvasNonBotPaintable(allBinaryGameCanvas));
    }
    

    void initMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.initMenu2();
    }
    

    void updateMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.initMenu2();
    }
    

    void popupMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.popupMenu2();
    }
    

    void closeMenu(AllBinaryGameCanvas@ allBinaryGameCanvas)
    {
        allBinaryGameCanvas.closeMenu2();
    }
}

namespace InGameMenuBehavior
{

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_instanceC = InGameMenuBehavior().jinit_InGameMenuBehavior();
    }

    InGameMenuBehavior@ jcell_instanceC;
    InGameMenuBehavior@ get_instanceC() property { jclinit(); return jcell_instanceC; }
    void set_instanceC(InGameMenuBehavior@ value) property { jclinit(); @jcell_instanceC = value; }
    

    InGameMenuBehavior@ getInstance()
    {
        return InGameMenuBehavior::instanceC;
    }
}

