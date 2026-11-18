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

class VerticalFormProcessor : Processor
{
    ScrollCurrentSelectionForm@ scrollCurrentSelectionForm_VerticalFormProcessor;
    

    VerticalFormProcessor@ jinit_VerticalFormProcessor(ScrollCurrentSelectionForm@ scrollCurrentSelectionForm)
    {
        this.jinit_Processor();
        @this.scrollCurrentSelectionForm_VerticalFormProcessor = scrollCurrentSelectionForm;
        return this;
    }
    

    void process()
    {
        this.scrollCurrentSelectionForm_VerticalFormProcessor.processVerticalForm();
        @this.scrollCurrentSelectionForm_VerticalFormProcessor.processor = Processor::getInstance();
    }
}

