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

class ScrollCurrentSelectionForm : ScrollSelectionForm, UpdateMyFontInterface
{
    bool moveForSmallScreen_ScrollCurrentSelectionForm;
    MyFontProcessor@ updateMyFontProcessor;
    MyFontProcessor@ myFontProcessor;
    Processor@ processor;
    ItemIndexDx@ preItemIndexDx_ScrollCurrentSelectionForm;
    int dx_ScrollCurrentSelectionForm;
    int dy_ScrollCurrentSelectionForm;
    int maxWidth_ScrollCurrentSelectionForm;

    // Java field initializers run after the super constructor
    void jfields_ScrollCurrentSelectionForm()
    {
    
    @this.updateMyFontProcessor = UpdateMyFontProcessor().jinit_UpdateMyFontProcessor(this);
    @this.myFontProcessor = this.updateMyFontProcessor;
    @this.processor = Processor::getInstance();
    @this.preItemIndexDx_ScrollCurrentSelectionForm = ItemIndexDx::getInstance();
    
    
    this.maxWidth_ScrollCurrentSelectionForm = 0;
    }
    

    ScrollCurrentSelectionForm@ jinit_ScrollCurrentSelectionForm(string title, ABCustomItem@[]@ items, ItemPaintableFactory@ formPaintableFactory, int border, int adjustedExtraBorder, bool moveForSmallScreen, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_ScrollSelectionForm(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor);
        this.jfields_ScrollCurrentSelectionForm();
        this.moveForSmallScreen_ScrollCurrentSelectionForm = moveForSmallScreen;
        return this;
    }
    

    void init(Rectangle@ rectangle, FormType@ formType)
    {
        ScrollSelectionForm::init(rectangle, formType);
        FormTypeFactory@ formTypeFactory = FormTypeFactory::getInstance();
        if (formType is formTypeFactory.TEMP_HORIZONTAL_FORM) {
            @this.processor = TempHorizontalFormProcessor().jinit_TempHorizontalFormProcessor(this);
            @this.preItemIndexDx_ScrollCurrentSelectionForm = TempHorizontalItemIndexDx().jinit_TempHorizontalItemIndexDx(this);
        } else if (formType is formTypeFactory.HORIZONTAL_FORM) {
            @this.processor = HorizontalFormProcessor().jinit_HorizontalFormProcessor(this);
            @this.preItemIndexDx_ScrollCurrentSelectionForm = HorizontalItemIndexDx().jinit_HorizontalItemIndexDx(this);
        } else if (formType is formTypeFactory.VERTICAL_CENTER_FORM) {
            @this.processor = VerticalFormProcessor().jinit_VerticalFormProcessor(this);
            @this.preItemIndexDx_ScrollCurrentSelectionForm = VerticalItemIndexDx().jinit_VerticalItemIndexDx(this);
        } else if (formType is formTypeFactory.NULL_FORM_TYPE) {
        } else {
            this.logUtil.putF(formTypeFactory.UNK, this, this.commonStrings.INIT);
        }
        @this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    void updateMeasurement(Graphics@ graphics)
    {
        @this.myFontProcessor = MyFontProcessor::getInstance();
    }
    

    void processTempHorizontalForm()
    {
        this.dx_ScrollCurrentSelectionForm = this.x - 30 + (this.rectangle.getWidth() >>> 1);
        this.dy_ScrollCurrentSelectionForm = this.y;
    }
    

    void processHorizontalForm()
    {
        int size = this.size();
        int totalWidth = 0;
        ABCustomItem@ item;
        for (int index = 0; index < size; index++) {
            @item = this.get(index);
            totalWidth += item.getMinimumWidth() + this.border;
        }
        this.dx_ScrollCurrentSelectionForm = this.x + (this.rectangle.getWidth() >>> 1) - (totalWidth >>> 1);
        this.dy_ScrollCurrentSelectionForm = this.y + (this.rectangle.getHeight() >>> 1);
        if (this.moveForSmallScreen_ScrollCurrentSelectionForm) {
            int maxTitleHeight = 175;
            if (this.dy_ScrollCurrentSelectionForm < maxTitleHeight) {
                this.dy_ScrollCurrentSelectionForm = maxTitleHeight;
            }
        }
    }
    

    void processVerticalForm()
    {
        int totalHeight = 0;
        int size = this.size();
        ABCustomItem@ item2;
        for (int index = 0; index < size; index++) {
            @item2 = this.get(index);
            if (this.maxWidth_ScrollCurrentSelectionForm < item2.getMinimumWidth()) {
                this.maxWidth_ScrollCurrentSelectionForm = item2.getMinimumWidth();
            }
            totalHeight += item2.getMinimumHeight() + this.border;
        }
        this.dx_ScrollCurrentSelectionForm = ((this.rectangle.getWidth() - this.maxWidth_ScrollCurrentSelectionForm) / 2);
        if (this.size() > 0) {
            this.dy_ScrollCurrentSelectionForm = this.y + ((this.rectangle.getHeight() - totalHeight) / 2);
            if (this.moveForSmallScreen_ScrollCurrentSelectionForm) {
                int maxTitleHeight = 175;
                if (this.dy_ScrollCurrentSelectionForm < maxTitleHeight) {
                    this.dy_ScrollCurrentSelectionForm = maxTitleHeight;
                }
            }
        } else {
            this.dy_ScrollCurrentSelectionForm = this.y;
        }
    }
    

    int getXTempHorizontalForm(int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.getDiffX(item);
    }
    

    int getXHorizontalForm(int index, ABCustomItem@ item, int dx, int dy)
    {
        return 0;
    }
    

    int getXVerticalForm(int index, ABCustomItem@ item, int dx, int dy)
    {
        return this.getDiffX(item) + this.halfBorder;
    }
    

    int getDiffX(ABCustomItem@ item)
    {
        return ((this.maxWidth_ScrollCurrentSelectionForm - item.getMinimumWidth()) >>> 1);
    }
    

    int getDx()
    {
        return this.dx_ScrollCurrentSelectionForm;
    }
    

    int getDy()
    {
        return this.dy_ScrollCurrentSelectionForm;
    }
    

    void paint(Graphics@ graphics)
    {
        try {
            this.processor.process();
            int delta = 0;
            int deltaX = this.getDx();
            int deltaY = this.getDy();
            int size = this.size();
            FormTypeFactory@ formTypeFactory = FormTypeFactory::getInstance();
            ABCustomItem@ item;
            for (int index = 0; index < size; index++) {
                @item = this.get(index);
                int diffX = this.preItemIndexDx_ScrollCurrentSelectionForm.getDx(index, item, this.dx_ScrollCurrentSelectionForm, this.dy_ScrollCurrentSelectionForm);
                if (index == this.getSelectedIndex()) {
                    delta = this.paintItem(graphics, index, item, deltaX + diffX, deltaY);
                    this.paintable.paint(graphics, index, deltaX + diffX, deltaY);
                } else {
                    delta = this.paintUnselectedItem(graphics, index, item, deltaX + diffX, deltaY);
                    this.paintable.paint(graphics, index, deltaX + diffX, deltaY);
                }
                if (this.formType is formTypeFactory.TEMP_HORIZONTAL_FORM) {
                } else if (this.formType is formTypeFactory.HORIZONTAL_FORM) {
                    deltaX = delta;
                } else if (this.formType is formTypeFactory.VERTICAL_CENTER_FORM) {
                    deltaY = delta;
                } else {
                    jthrow(Exception().jinit_Exception(formTypeFactory.UNK));
                }
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT, e);
            }
            else { jthrow(jex0); }
        }
    }
}

