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
// package org.allbinary.game.paint

class MainGameDemoStatePaintable : Paintable
{
    Paintable@ ownershipPaintableInterface_MainGameDemoStatePaintable;
    Paintable@ menuPaintableInterface_MainGameDemoStatePaintable;
    

    MainGameDemoStatePaintable@ jinit_MainGameDemoStatePaintable(Paintable@ ownershipPaintableInterface, Paintable@ menuPaintableInterface)
    {
        this.jinit_Paintable();
        @this.ownershipPaintableInterface_MainGameDemoStatePaintable = ownershipPaintableInterface;
        @this.menuPaintableInterface_MainGameDemoStatePaintable = menuPaintableInterface;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.menuPaintableInterface_MainGameDemoStatePaintable.paint(graphics);
        this.ownershipPaintableInterface_MainGameDemoStatePaintable.paint(graphics);
    }
    

    Paintable@ getOwnershipPaintableInterface()
    {
        return this.ownershipPaintableInterface_MainGameDemoStatePaintable;
    }
    

    Paintable@ getMenuPaintableInterface()
    {
        return this.menuPaintableInterface_MainGameDemoStatePaintable;
    }
}

