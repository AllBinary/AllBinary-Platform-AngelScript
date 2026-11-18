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
// package org.allbinary.graphics.form

class TempHorizontalFormProcessor : Processor
{
    ScrollCurrentSelectionForm@ scrollCurrentSelectionForm_TempHorizontalFormProcessor;
    

    TempHorizontalFormProcessor@ jinit_TempHorizontalFormProcessor(ScrollCurrentSelectionForm@ scrollCurrentSelectionForm)
    {
        this.jinit_Processor();
        @this.scrollCurrentSelectionForm_TempHorizontalFormProcessor = scrollCurrentSelectionForm;
        return this;
    }
    

    void process()
    {
        this.scrollCurrentSelectionForm_TempHorizontalFormProcessor.processTempHorizontalForm();
        @this.scrollCurrentSelectionForm_TempHorizontalFormProcessor.processor = Processor::getInstance();
    }
}

