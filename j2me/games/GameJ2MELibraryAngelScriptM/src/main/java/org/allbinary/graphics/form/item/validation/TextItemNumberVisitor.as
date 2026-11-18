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

class TextItemNumberVisitor : Visitor
{
    LogUtil@ logUtil;

    // Java field initializers run after the super constructor
    void jfields_TextItemNumberVisitor()
    {
    @this.logUtil = LogUtil::getInstance();
    }
    

    TextItemNumberVisitor@ jinit_TextItemNumberVisitor()
    {
        this.jinit_Visitor();
        this.jfields_TextItemNumberVisitor();
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        string value = jstringOf(anyType);
        if (int(value.length()) < 2) {
            StringValidationUtil@ stringValidationUtil = StringValidationUtil::getInstance();
            if (stringValidationUtil.isNumber(value)) {
                return BooleanFactory::getInstance().TRUE;
            } else {
                try {
                    TextNotificationUtil::getInstance().fireError("Numbers Only");
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
}

