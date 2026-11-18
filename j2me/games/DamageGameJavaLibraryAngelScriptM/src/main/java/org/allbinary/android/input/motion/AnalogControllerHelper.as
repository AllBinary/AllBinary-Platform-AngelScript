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
// package org.allbinary.android.input.motion

class AnalogControllerHelper : JObjectBase
{
    int reduceTimeFactor;
    int SCALE_VALUE;
    TimeDelayHelper@ rightTimeElapsedHelper;
    TimeDelayHelper@ leftTimeElapsedHelper;
    TimeDelayHelper@ downTimeElapsedHelper;
    TimeDelayHelper@ upTimeElapsedHelper;

    // Java field initializers run after the super constructor
    void jfields_AnalogControllerHelper()
    {
    
    this.SCALE_VALUE = AnalogControllerConfigurationFactory::getInstance().SCALE_VALUE;
    @this.rightTimeElapsedHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.leftTimeElapsedHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.downTimeElapsedHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.upTimeElapsedHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    }
    

    AnalogControllerHelper@ jinit_AnalogControllerHelper(int reduceTimeFactor)
    {
        this.jfields_AnalogControllerHelper();
        this.reduceTimeFactor = reduceTimeFactor;
        return this;
    }
    

    void right(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.rightTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >>> this.reduceTimeFactor);
        if (this.rightTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.right();
        }
    }
    

    void left(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.leftTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >>> this.reduceTimeFactor);
        if (this.leftTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.left();
        }
    }
    

    void up(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.upTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >>> this.reduceTimeFactor);
        if (this.upTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.up();
        }
    }
    

    void down(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.downTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >>> this.reduceTimeFactor);
        if (this.downTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.down();
        }
    }
}

