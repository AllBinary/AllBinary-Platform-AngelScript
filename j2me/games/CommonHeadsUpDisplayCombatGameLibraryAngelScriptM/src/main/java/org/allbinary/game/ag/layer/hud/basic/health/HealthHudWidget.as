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
// package org.allbinary.game.ag.layer.hud.basic.health

class HealthHudWidget : BasicHud, PaintableInterface, HealthListenerInterface
{
    int healthScale_HealthHudWidget;
    Animation@ animationInterface;
    Health@ healthInterface;
    int max;
    int[]@ xArray_HealthHudWidget;
    GameTickTimeDelayHelper@ gameTickTimeDelayHelper_HealthHudWidget;
    TimeDelayHelper@ timeDelayHelper_HealthHudWidget;
    TimeDelayHelper@ slowBeatTimeDelayHelper_HealthHudWidget;
    TimeDelayHelper@ mediumBeatTimeDelayHelper_HealthHudWidget;
    TimeDelayHelper@ fastBeatTimeDelayHelper_HealthHudWidget;

    // Java field initializers run after the super constructor
    void jfields_HealthHudWidget()
    {
    
    
    
    
    
    @this.gameTickTimeDelayHelper_HealthHudWidget = GameTickTimeDelayHelperFactory::getInstance();
    @this.timeDelayHelper_HealthHudWidget = NoTimeDelayHelper::SINGLETON;
    @this.slowBeatTimeDelayHelper_HealthHudWidget = TimeDelayHelper().jinit_TimeDelayHelper(1280);
    @this.mediumBeatTimeDelayHelper_HealthHudWidget = TimeDelayHelper().jinit_TimeDelayHelper(640);
    @this.fastBeatTimeDelayHelper_HealthHudWidget = TimeDelayHelper().jinit_TimeDelayHelper(320);
    }
    

    HealthHudWidget@ jinit_HealthHudWidget(Animation@ animationInterface, Health@ healthInterface, int location, int direction)
    {
        this.jinit_BasicHud(location, direction, 2, BasicColorFactory::getInstance().WHITE);
        this.jfields_HealthHudWidget();
        @this.animationInterface = animationInterface;
        @this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.healthScale_HealthHudWidget = (this.healthInterface.getMaxHealth() / 6) + 1;
        this.onHealthChange();
        this.updateMaxWidth = healthInterface.getMaxHealth() * 16;
        this.updateMaxHeight = 16;
        @this.xArray_HealthHudWidget = array<int>(30);
        this.update();
        return this;
    }
    

    void update()
    {
        if (this.xArray_HealthHudWidget !is null) {
            for (int index = 0; index < int(this.xArray_HealthHudWidget.length()); index++) {
                this.xArray_HealthHudWidget[index] = this.getX() + (index * 16);
            }
        }
    }
    

    void setX(int x)
    {
        BasicHud::setX(x);
        this.update();
    }
    

    void onHealthChange()
    {
        this.max = (this.healthInterface.getHealth() / this.healthScale_HealthHudWidget);
        @this.timeDelayHelper_HealthHudWidget = NoTimeDelayHelper::SINGLETON;
        if (this.max <= 1 && this.healthInterface.isAlive()) {
            this.max = 1;
            if (this.healthScale_HealthHudWidget - this.healthInterface.getHealth() > (this.healthScale_HealthHudWidget * 2) / 3) {
                @this.timeDelayHelper_HealthHudWidget = this.slowBeatTimeDelayHelper_HealthHudWidget;
            } else if (this.healthScale_HealthHudWidget - this.healthInterface.getHealth() > this.healthScale_HealthHudWidget / 3) {
                @this.timeDelayHelper_HealthHudWidget = this.mediumBeatTimeDelayHelper_HealthHudWidget;
            } else {
                @this.timeDelayHelper_HealthHudWidget = this.fastBeatTimeDelayHelper_HealthHudWidget;
            }
        }
    }
    

    void paint(Graphics@ graphics)
    {
        this.myFontProcessor.process(graphics);
        for (int index = 0; index < this.max; index++) {
            if (this.timeDelayHelper_HealthHudWidget.isTime(this.gameTickTimeDelayHelper_HealthHudWidget.startTime)) {
                this.animationInterface.paintXY(graphics, this.xArray_HealthHudWidget[index], this.getY());
            }
        }
    }
    

    void paintThreed(Graphics@ graphics)
    {
    }
}

