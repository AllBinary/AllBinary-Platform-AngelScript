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

class LockablePaintable : ItemPaintable
{
    Animation@ animation_LockablePaintable;
    int lockedIndex_LockablePaintable;

    // Java field initializers run after the super constructor
    void jfields_LockablePaintable()
    {
    @this.animation_LockablePaintable = FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance().get(LockedResources::getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance(0);
    
    }
    

    LockablePaintable@ jinit_LockablePaintable(int lockedIndex)
    {
        this.jinit_ItemPaintable();
        this.jfields_LockablePaintable();
        this.lockedIndex_LockablePaintable = lockedIndex;
        return this;
    }
    

    void paint(Graphics@ graphics, int currentIndex, int x, int y)
    {
        if (LockedUtil::getInstance().isLocked() && currentIndex >= this.getLockedIndex()) {
            this.getAnimation().paintXY(graphics, x, y);
        }
    }
    

    int getLockedIndex()
    {
        return this.lockedIndex_LockablePaintable;
    }
    

    Animation@ getAnimation()
    {
        return this.animation_LockablePaintable;
    }
}

