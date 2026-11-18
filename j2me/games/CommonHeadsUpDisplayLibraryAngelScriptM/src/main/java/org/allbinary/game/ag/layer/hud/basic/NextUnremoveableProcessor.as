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

class NextUnremoveableProcessor : Processor
{
    PlayerGameNotificationHud@ updateMeasurementProcessor_NextUnremoveableProcessor;
    

    NextUnremoveableProcessor@ jinit_NextUnremoveableProcessor(PlayerGameNotificationHud@ updateMeasurementProcessor)
    {
        this.jinit_Processor();
        @this.updateMeasurementProcessor_NextUnremoveableProcessor = updateMeasurementProcessor;
        return this;
    }
    

    void process()
    {
        this.updateMeasurementProcessor_NextUnremoveableProcessor.setNextUnremoveableProcess();
    }
}

