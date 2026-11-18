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

class NumberTextFieldItemValidator : ValidatorBase
{
    ABTextFieldItem@ textFieldItem_NumberTextFieldItemValidator;
    int min_NumberTextFieldItemValidator;
    int max_NumberTextFieldItemValidator;
    int maxChars_NumberTextFieldItemValidator;
    

    NumberTextFieldItemValidator@ jinit_NumberTextFieldItemValidator(ABTextFieldItem@ textFieldItem, int maxChars, int min, int max)
    {
        this.jinit_ValidatorBase();
        @this.textFieldItem_NumberTextFieldItemValidator = textFieldItem;
        this.min_NumberTextFieldItemValidator = min;
        this.max_NumberTextFieldItemValidator = max;
        this.maxChars_NumberTextFieldItemValidator = maxChars;
        return this;
    }
    

    JBoolean@ isNumberValid(JInteger@ value)
    {
        return BooleanFactory::getInstance().TRUE;
    }
    

    BasicArrayList@ toNumberVector(JInteger@ value)
    {
        return BasicArrayListD().jinit_BasicArrayListD();
    }
    

    JBoolean@ isValid()
    {
        JBoolean@ result = BooleanFactory::getInstance().TRUE;
        string string_ = this.textFieldItem_NumberTextFieldItemValidator.getString();
        int textLength = int(string_.length());
        if (textLength > 0 && textLength < this.maxChars_NumberTextFieldItemValidator) {
            try {
                Integer::parseInt(this.textFieldItem_NumberTextFieldItemValidator.getString());
            } catch {
                Throwable@ jex0 = jcatch();
                if (cast<NumberFormatException>(jex0) !is null) {
                    NumberFormatException@ e = cast<NumberFormatException>(jex0);
                @result = BooleanFactory::getInstance().FALSE;
                }
                else { jthrow(jex0); }
            }
        } else {
            if (textLength < 1) {
                @result = BooleanFactory::getInstance().FALSE;
            } else if (textLength > this.maxChars_NumberTextFieldItemValidator) {
                @result = BooleanFactory::getInstance().FALSE;
            }
        }
        return result;
    }
    

    BasicArrayList@ toList()
    {
        BasicArrayList@ list = BasicArrayListD().jinit_BasicArrayListD();
        string string_ = this.textFieldItem_NumberTextFieldItemValidator.getString();
        int textLength = int(string_.length());
        string label = this.textFieldItem_NumberTextFieldItemValidator.getLabel();
        string name = String::substring(label, 0, int(label.length()) - 2);
        SmallIntegerSingletonFactory@ smallIntegerSingletonFactory = SmallIntegerSingletonFactory::getInstance();
        StringMaker@ stringMaker = StringMaker().jinit_StringMaker();
        if (textLength > 0 && textLength < this.maxChars_NumberTextFieldItemValidator) {
            try {
                JInteger@ number = smallIntegerSingletonFactory.createInstance(Integer::parseInt(this.textFieldItem_NumberTextFieldItemValidator.getString()));
                if (number.intValue() > this.min_NumberTextFieldItemValidator) {
                    stringMaker.delete(0, stringMaker.length());
                    list.add(jbox(stringMaker.append(name).append(" is to small").toString()));
                } else if (number.intValue() > this.max_NumberTextFieldItemValidator) {
                    stringMaker.delete(0, stringMaker.length());
                    list.add(jbox(stringMaker.append(name).append(" is to large").toString()));
                }
            } catch {
                Throwable@ jex1 = jcatch();
                if (cast<NumberFormatException>(jex1) !is null) {
                    NumberFormatException@ e = cast<NumberFormatException>(jex1);
                stringMaker.delete(0, stringMaker.length());
                list.add(jbox(stringMaker.append(name).append(" is not a number").toString()));
                }
                else { jthrow(jex1); }
            }
        } else {
            if (textLength < 1) {
                stringMaker.delete(0, stringMaker.length());
                list.add(jbox(stringMaker.append(name).append(" is to short").toString()));
            } else if (textLength > this.maxChars_NumberTextFieldItemValidator) {
                stringMaker.delete(0, stringMaker.length());
                list.add(jbox(stringMaker.append(name).append(" is to long").toString()));
            }
        }
        return list;
    }
}

