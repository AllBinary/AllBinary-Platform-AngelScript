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
// package org.allbinary.graphics.form

class LockableFormPaintableFactory : ItemPaintableFactory
{
    int lockedIndex_LockableFormPaintableFactory;
    

    LockableFormPaintableFactory@ jinit_LockableFormPaintableFactory(int lockedIndex)
    {
        this.jinit_ItemPaintableFactory();
        this.lockedIndex_LockableFormPaintableFactory = lockedIndex;
        return this;
    }
    

    ItemPaintable@ getInstanceItemPaintable(PaintableForm@ paintableForm)
    {
        return LockablePaintable().jinit_LockablePaintable(this.lockedIndex_LockableFormPaintableFactory);
    }
}

