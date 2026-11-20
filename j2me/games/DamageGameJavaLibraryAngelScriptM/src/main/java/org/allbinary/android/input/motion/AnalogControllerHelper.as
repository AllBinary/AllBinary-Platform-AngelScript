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
    int reduceTimeFactor_AnalogControllerHelper;
    int SCALE_VALUE_AnalogControllerHelper;
    TimeDelayHelper@ rightTimeElapsedHelper_AnalogControllerHelper;
    TimeDelayHelper@ leftTimeElapsedHelper_AnalogControllerHelper;
    TimeDelayHelper@ downTimeElapsedHelper_AnalogControllerHelper;
    TimeDelayHelper@ upTimeElapsedHelper_AnalogControllerHelper;

    // Java field initializers run after the super constructor
    void jfields_AnalogControllerHelper()
    {
    
    this.SCALE_VALUE_AnalogControllerHelper = AnalogControllerConfigurationFactory::getInstance().SCALE_VALUE;
    @this.rightTimeElapsedHelper_AnalogControllerHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.leftTimeElapsedHelper_AnalogControllerHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.downTimeElapsedHelper_AnalogControllerHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.upTimeElapsedHelper_AnalogControllerHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    }
    

    AnalogControllerHelper@ jinit_AnalogControllerHelper(int reduceTimeFactor)
    {
        this.jfields_AnalogControllerHelper();
        this.reduceTimeFactor_AnalogControllerHelper = reduceTimeFactor;
        return this;
    }
    

    void right(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.rightTimeElapsedHelper_AnalogControllerHelper.delay = ((this.SCALE_VALUE_AnalogControllerHelper - xAnalogValue) >>> this.reduceTimeFactor_AnalogControllerHelper);
        if (this.rightTimeElapsedHelper_AnalogControllerHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.right();
        }
    }
    

    void left(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.leftTimeElapsedHelper_AnalogControllerHelper.delay = ((this.SCALE_VALUE_AnalogControllerHelper + xAnalogValue) >>> this.reduceTimeFactor_AnalogControllerHelper);
        if (this.leftTimeElapsedHelper_AnalogControllerHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.left();
        }
    }
    

    void up(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.upTimeElapsedHelper_AnalogControllerHelper.delay = ((this.SCALE_VALUE_AnalogControllerHelper - xAnalogValue) >>> this.reduceTimeFactor_AnalogControllerHelper);
        if (this.upTimeElapsedHelper_AnalogControllerHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.up();
        }
    }
    

    void down(CollidableDestroyableDamageableLayer@ collidableDestroyableDamageableLayer, int xAnalogValue)
    {
        this.downTimeElapsedHelper_AnalogControllerHelper.delay = ((this.SCALE_VALUE_AnalogControllerHelper + xAnalogValue) >>> this.reduceTimeFactor_AnalogControllerHelper);
        if (this.downTimeElapsedHelper_AnalogControllerHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.down();
        }
    }
}

