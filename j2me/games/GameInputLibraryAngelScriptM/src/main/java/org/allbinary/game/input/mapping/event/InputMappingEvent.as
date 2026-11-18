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
// package org.allbinary.game.input.mapping.event

class InputMappingEvent : AllBinaryEventObject
{
    InputToGameKeyMapping@ inputToGameKeyMapping_InputMappingEvent;

    // Java field initializers run after the super constructor
    void jfields_InputMappingEvent()
    {
    @this.inputToGameKeyMapping_InputMappingEvent = InputToGameKeyMapping::getNullInstance();
    }
    

    InputMappingEvent@ jinit_InputMappingEvent(JObject@ anyType)
    {
        this.jinit_AllBinaryEventObject(anyType);
        this.jfields_InputMappingEvent();
        return this;
    }
    

    void setInputToGameKeyMapping(InputToGameKeyMapping@ inputToGameKeyMapping)
    {
        @this.inputToGameKeyMapping_InputMappingEvent = inputToGameKeyMapping;
    }
    

    InputToGameKeyMapping@ getInputToGameKeyMapping()
    {
        return this.inputToGameKeyMapping_InputMappingEvent;
    }
}

