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
// package org.allbinary.media

class AllBinaryVisualDebugVibration : AllBinaryVibrationME, UpdateMyFontInterface
{
    DisplayInfoSingleton@ displayInfoSingleton_AllBinaryVisualDebugVibration;
    TimeDelayHelper@ timeDelayHelper_AllBinaryVisualDebugVibration;
    string VIBRATING_AllBinaryVisualDebugVibration;
    MyFontProcessor@ myFontProcessor_AllBinaryVisualDebugVibration;
    int anchor_AllBinaryVisualDebugVibration;
    int width_AllBinaryVisualDebugVibration;

    // Java field initializers run after the super constructor
    void jfields_AllBinaryVisualDebugVibration()
    {
    @this.displayInfoSingleton_AllBinaryVisualDebugVibration = DisplayInfoSingleton::getInstance();
    @this.timeDelayHelper_AllBinaryVisualDebugVibration = TimeDelayHelper().jinit_TimeDelayHelper(Integer::MAX_VALUE);
    this.VIBRATING_AllBinaryVisualDebugVibration = "Vibrating";
    @this.myFontProcessor_AllBinaryVisualDebugVibration = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    this.anchor_AllBinaryVisualDebugVibration = Anchor::TOP_LEFT;
    
    }

    AllBinaryVisualDebugVibration@ jinit_AllBinaryVisualDebugVibration()
    {
        this.jinit_AllBinaryVibrationME();
        this.jfields_AllBinaryVisualDebugVibration();
        return this;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        Font@ font = graphics.getFont();
        this.width_AllBinaryVisualDebugVibration = font.stringWidth(this.VIBRATING_AllBinaryVisualDebugVibration);
        @this.myFontProcessor_AllBinaryVisualDebugVibration = MyFontProcessor::getInstance();
    }
    

    void vibrate(int duration, int type, int volume)
    {
        this.timeDelayHelper_AllBinaryVisualDebugVibration.delay = duration;
    }
    

    void paint(Graphics@ graphics)
    {
        if (this.timeDelayHelper_AllBinaryVisualDebugVibration.isTimeTNT()) {
            this.timeDelayHelper_AllBinaryVisualDebugVibration.delay = Integer::MAX_VALUE;
            this.myFontProcessor_AllBinaryVisualDebugVibration.process(graphics);
            graphics.drawString(this.VIBRATING_AllBinaryVisualDebugVibration, this.displayInfoSingleton_AllBinaryVisualDebugVibration.getLastHalfWidth() - (this.width_AllBinaryVisualDebugVibration >>> 1), 0, this.anchor_AllBinaryVisualDebugVibration);
        }
    }
}

