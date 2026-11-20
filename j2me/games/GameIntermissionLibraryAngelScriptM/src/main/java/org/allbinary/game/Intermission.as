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
    bool enabled_Intermission;
    TimeDelayHelper@ timeElapsedHelper_Intermission;
    IntermissionEnableListenerInterface@ intermissionEnableListener_Intermission;

    // Java field initializers run after the super constructor
    void jfields_Intermission()
    {
    
    @this.timeElapsedHelper_Intermission = TimeDelayHelper().jinit_TimeDelayHelper(0);
    @this.intermissionEnableListener_Intermission = NullIntermissionEnableListener::getInstance();
    }
    

    Intermission@ jinit_Intermission()
    {
        this.jfields_Intermission();
        return this;
    }
    

    void setListener(IntermissionEnableListenerInterface@ enableListener)
    {
        @this.intermissionEnableListener_Intermission = enableListener;
    }
    

    TimeDelayHelper@ getTimeDelayHelper()
    {
        return this.timeElapsedHelper_Intermission;
    }
    

    void setEnabled(bool enabled)
    {
        this.enabled_Intermission = enabled;
        if (this.isEnabled()) {
            this.getTimeDelayHelper().setStartTimeTNT();
        }
        this.intermissionEnableListener_Intermission.notifyIntermission(enabled);
    }
    

    bool isEnabled()
    {
        return this.enabled_Intermission;
    }
}

