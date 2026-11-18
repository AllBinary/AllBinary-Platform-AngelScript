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

class FormPaintable : Paintable
{
    PaintableForm@ form_FormPaintable;
    

    FormPaintable@ jinit_FormPaintable(PaintableForm@ form)
    {
        this.jinit_Paintable();
        @this.form_FormPaintable = form;
        return this;
    }
    

    void paint(Graphics@ graphics)
    {
        this.form_FormPaintable.paint(graphics);
    }
    

    PaintableForm@ getForm()
    {
        return this.form_FormPaintable;
    }
}

