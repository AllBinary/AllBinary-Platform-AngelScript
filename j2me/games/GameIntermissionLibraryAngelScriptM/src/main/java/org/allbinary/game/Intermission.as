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
// package org.allbinary.game

class Intermission : JObjectBase, IntermissionInterface
{
    bool enabled;
    TimeDelayHelper@ timeElapsedHelper;
    IntermissionEnableListenerInterface@ intermissionEnableListener;

    // Java field initializers run after the super constructor
    void jfields_Intermission()
    {
    
    @this.timeElapsedHelper = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.intermissionEnableListener = NullIntermissionEnableListener::getInstance();
    }
    

    Intermission@ jinit_Intermission()
    {
        this.jfields_Intermission();
        return this;
    }
    

    void setListener(IntermissionEnableListenerInterface@ enableListener)
    {
        @this.intermissionEnableListener = enableListener;
    }
    

    TimeDelayHelper@ getTimeDelayHelper()
    {
        return this.timeElapsedHelper;
    }
    

    void setEnabled(bool enabled)
    {
        this.enabled = enabled;
        if (this.isEnabled()) {
            this.getTimeDelayHelper().setStartTimeTNT();
        }
        this.intermissionEnableListener.notifyIntermission(enabled);
    }
    

    bool isEnabled()
    {
        return this.enabled;
    }
}

