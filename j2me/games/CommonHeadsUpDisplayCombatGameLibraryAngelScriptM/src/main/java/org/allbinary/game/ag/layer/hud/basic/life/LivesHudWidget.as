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
// package org.allbinary.game.ag.layer.hud.basic.life

class LivesHudWidget : BasicHud, PaintableInterface
{
    Life@ lifeInterface_LivesHudWidget;
    int[]@ xArray_LivesHudWidget;
    Animation@ animationInterface_LivesHudWidget;
    

    LivesHudWidget@ jinit_LivesHudWidget(Animation@ animationInterface, Life@ lifeInterface, int location, int direction)
    {
        this.jinit_BasicHud(location, direction, 2, BasicColorFactory::getInstance().WHITE);
        @this.lifeInterface_LivesHudWidget = lifeInterface;
        int size = int(this.getLifeInterface().getMaxlives());
        @this.xArray_LivesHudWidget = array<int>(size);
        @this.animationInterface_LivesHudWidget = animationInterface;
        this.updateMaxWidth = int(this.lifeInterface_LivesHudWidget.getMaxlives()) * 16;
        this.updateMaxHeight = 16;
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        BasicHud::updateMeasurement(graphics);
        int maxLives = int(this.getLifeInterface().getMaxlives());
        for (int index = 0; index < maxLives; index++) {
            this.xArray_LivesHudWidget[index] = this.getX() + (index * 16);
        }
    }
    

    void onDisplayChangeEvent(DisplayChangeEvent@ displayChangeEvent)
    {
        BasicHud::onDisplayChangeEvent(displayChangeEvent);
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    void setX(int x)
    {
        BasicHud::setX(x);
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        for (int index = int(this.getLifeInterface().get()); --index >= 0; ) {
            this.animationInterface_LivesHudWidget.paintXY(graphics, this.xArray_LivesHudWidget[index], this.getY());
        }
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
    

    Life@ getLifeInterface()
    {
        return this.lifeInterface_LivesHudWidget;
    }
}

