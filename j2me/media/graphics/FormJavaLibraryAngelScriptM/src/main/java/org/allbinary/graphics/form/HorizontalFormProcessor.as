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

class HorizontalFormProcessor : Processor
{
    ScrollCurrentSelectionForm@ scrollCurrentSelectionForm_HorizontalFormProcessor;
    

    HorizontalFormProcessor@ jinit_HorizontalFormProcessor(ScrollCurrentSelectionForm@ scrollCurrentSelectionForm)
    {
        this.jinit_Processor();
        @this.scrollCurrentSelectionForm_HorizontalFormProcessor = scrollCurrentSelectionForm;
        return this;
    }
    

    void process()
    {
        this.scrollCurrentSelectionForm_HorizontalFormProcessor.processHorizontalForm();
        @this.scrollCurrentSelectionForm_HorizontalFormProcessor.processor = Processor::getInstance();
    }
}

