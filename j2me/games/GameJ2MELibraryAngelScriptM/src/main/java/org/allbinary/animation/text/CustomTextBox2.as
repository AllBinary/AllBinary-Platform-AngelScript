/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

class CustomTextBox2 : CustomTextBox
{
    

    CustomTextBox2@ jinit_CustomTextBox2(CommandListener@ cmdListener, string label, string text, int maxSize, int constraints, Font@ font, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_CustomTextBox(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor);
        this.getTextFieldItem().setFocus(true);
        return this;
    }
}

