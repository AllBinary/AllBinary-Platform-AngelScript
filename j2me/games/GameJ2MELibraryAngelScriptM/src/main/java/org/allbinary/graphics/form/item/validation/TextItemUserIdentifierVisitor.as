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

class TextItemUserIdentifierVisitor : Visitor
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_TextItemUserIdentifierVisitor()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    TextItemUserIdentifierVisitor@ jinit_TextItemUserIdentifierVisitor()
    {
        this.jinit_Visitor();
        this.jfields_TextItemUserIdentifierVisitor();
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        string value = jstringOf(anyType);
        if (int(value.length()) < 2) {
            uint16 charValue = String::charAt(value, 0);
            StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
            if (stringValidationUtil.isNumber(value)) {
                return BooleanFactory::getInstance().TRUE;
            } else if (this.isLetter(charValue)) {
                return BooleanFactory::getInstance().TRUE;
            } else {
                try {
                    TextNotificationUtil::getInstance().fireError("Only Letters & Numbers Allowed");
                } catch {
                    Throwable@ jex0 = jcatch();
                    if (cast<Exception>(jex0) !is null) {
                        Exception@ e = cast<Exception>(jex0);
                    CommonStrings@ commonStrings = CommonStrings::getInstance();
                    this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
                    }
                    else { jthrow(jex0); }
                }
                return BooleanFactory::getInstance().FALSE;
            }
        } else {
            return BooleanFactory::getInstance().FALSE;
        }
        return null;
    }
    

    bool isLetter(uint16 charValue)
    {
        int value = int(charValue);
        return (value > 64 && value < 91) || (value > 96 && value < 123);
    }
}

