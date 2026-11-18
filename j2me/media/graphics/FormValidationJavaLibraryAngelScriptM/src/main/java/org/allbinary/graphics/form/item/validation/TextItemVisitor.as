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

class TextItemVisitor : Visitor
{
    

    TextItemVisitor@ jinit_TextItemVisitor()
    {
        this.jinit_Visitor();
        return this;
    }
    

    JObject@ visit(JObject@ anyType)
    {
        string value = jstringOf(anyType);
        if (int(value.length()) < 2) {
            return BooleanFactory::getInstance().TRUE;
        } else {
            return BooleanFactory::getInstance().FALSE;
        }
        return null;
    }
}

