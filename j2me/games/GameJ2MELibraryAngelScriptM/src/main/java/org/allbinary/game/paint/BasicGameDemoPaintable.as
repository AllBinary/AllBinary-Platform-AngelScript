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

class BasicGameDemoPaintable : StatePaintable
{
    Paintable@ mainDemoStatePaintable_BasicGameDemoPaintable;
    Paintable@ ownershipPaintable_BasicGameDemoPaintable;
    Paintable@ helpPaintableInterface_BasicGameDemoPaintable;
    Paintable@ currentStatePaintable_BasicGameDemoPaintable;

    // Java field initializers run after the super constructor
    void jfields_BasicGameDemoPaintable()
    {
    
    
    
    @this.currentStatePaintable_BasicGameDemoPaintable = NullPaintable::getInstance();
    }
    

    BasicGameDemoPaintable@ jinit_BasicGameDemoPaintable(Paintable@ mainDemoStatePaintable, Paintable@ ownershipPaintable, Paintable@ helpPaintableInterface)
    {
        this.jinit_StatePaintable();
        this.jfields_BasicGameDemoPaintable();
        @this.mainDemoStatePaintable_BasicGameDemoPaintable = mainDemoStatePaintable;
        this.setCurrentStatePaintable(NullPaintable::getInstance());
        @this.ownershipPaintable_BasicGameDemoPaintable = ownershipPaintable;
        @this.helpPaintableInterface_BasicGameDemoPaintable = helpPaintableInterface;
        return this;
    }
    

    void setState(int state)
    {
        if (state == 0) {
            this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
        } else if (state == 1) {
            this.setCurrentStatePaintable(this.helpPaintableInterface_BasicGameDemoPaintable);
        } else {
            this.setCurrentStatePaintable(this.ownershipPaintable_BasicGameDemoPaintable);
        }
    }
    

    void paint(Graphics@ graphics)
    {
        this.getCurrentStatePaintable().paint(graphics);
    }
    

    Paintable@ getHelpPaintableInterface()
    {
        return this.helpPaintableInterface_BasicGameDemoPaintable;
    }
    

    void setCurrentStatePaintable(Paintable@ currentStatePaintable)
    {
        @this.currentStatePaintable_BasicGameDemoPaintable = currentStatePaintable;
    }
    

    Paintable@ getCurrentStatePaintable()
    {
        return this.currentStatePaintable_BasicGameDemoPaintable;
    }
    

    Paintable@ getMainDemoStatePaintable()
    {
        return this.mainDemoStatePaintable_BasicGameDemoPaintable;
    }
}

