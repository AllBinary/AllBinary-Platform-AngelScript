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
// package org.allbinary.game.ag.layer.hud.basic

class SetAndRemoveProcessor : Processor
{
    PlayerGameNotificationHud@ updateMeasurementProcessor_SetAndRemoveProcessor;
    

    SetAndRemoveProcessor@ jinit_SetAndRemoveProcessor(PlayerGameNotificationHud@ updateMeasurementProcessor)
    {
        this.jinit_Processor();
        @this.updateMeasurementProcessor_SetAndRemoveProcessor = updateMeasurementProcessor;
        return this;
    }
    

    void process()
    {
        this.updateMeasurementProcessor_SetAndRemoveProcessor.setAndRemoveProcess();
    }
}

