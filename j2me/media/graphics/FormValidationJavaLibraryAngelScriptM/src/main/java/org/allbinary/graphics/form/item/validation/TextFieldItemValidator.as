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
// package org.allbinary.graphics.form.item.validation

class TextFieldItemValidator : ValidatorBase
{
    ABTextFieldItem@ textFieldItem_TextFieldItemValidator;
    int min_TextFieldItemValidator;
    int max_TextFieldItemValidator;
    bool allowOnEmpty_TextFieldItemValidator;
    

    TextFieldItemValidator@ jinit_TextFieldItemValidator(ABTextFieldItem@ textFieldItem, int min, int max, bool allowOnEmpty)
    {
        this.jinit_ValidatorBase();
        @this.textFieldItem_TextFieldItemValidator = textFieldItem;
        this.min_TextFieldItemValidator = min;
        this.max_TextFieldItemValidator = max;
        this.allowOnEmpty_TextFieldItemValidator = allowOnEmpty;
        return this;
    }
    

    JBoolean@ isValid()
    {
        BooleanFactory@ booleanFactory = BooleanFactory::getInstance();
        JBoolean@ result = booleanFactory.TRUE;
        string string_ = this.textFieldItem_TextFieldItemValidator.getString();
        int textLength = int(string_.length());
        if ((textLength == 0 && this.allowOnEmpty_TextFieldItemValidator) || textLength > this.min_TextFieldItemValidator && textLength < this.max_TextFieldItemValidator) {
        } else {
            if (textLength < this.min_TextFieldItemValidator) {
                @result = booleanFactory.FALSE;
            } else if (textLength > this.max_TextFieldItemValidator) {
                @result = booleanFactory.FALSE;
            }
        }
        return result;
    }
    

    BasicArrayList@ toList()
    {
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        string string_ = this.textFieldItem_TextFieldItemValidator.getString();
        int textLength = int(string_.length());
        if (textLength > this.min_TextFieldItemValidator && textLength < this.max_TextFieldItemValidator) {
        } else {
            string label = this.textFieldItem_TextFieldItemValidator.getLabel();
            string name = String::substring(label, 0, int(label.length()) - 2);
            if (textLength < this.min_TextFieldItemValidator) {
                list.add(jbox(StringMaker().jinit_StringMaker().append(name).append(" is to short").toString()));
            } else if (textLength > this.max_TextFieldItemValidator) {
                list.add(jbox(StringMaker().jinit_StringMaker().append(name).append(" is to long").toString()));
            }
        }
        return list;
    }
}

