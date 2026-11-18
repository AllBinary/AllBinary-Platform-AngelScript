/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.font

class UpdateMyFontProcessor : MyFontProcessor
{
    UpdateMyFontInterface@ updateMeasurementProcessor_UpdateMyFontProcessor;
    

    UpdateMyFontProcessor@ jinit_UpdateMyFontProcessor(UpdateMyFontInterface@ keyValueDrawCharArray)
    {
        this.jinit_MyFontProcessor();
        @this.updateMeasurementProcessor_UpdateMyFontProcessor = keyValueDrawCharArray;
        return this;
    }
    

    void process(Graphics@ graphics)
    {
        this.updateMeasurementProcessor_UpdateMyFontProcessor.updateMeasurement(graphics);
    }
}

