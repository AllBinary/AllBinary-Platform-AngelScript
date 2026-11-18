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

class ScrollSelectionForm : PaintableForm
{
    RectangleCollisionUtil@ rectangleCollisionUtil_ScrollSelectionForm;
    int border;
    int halfBorder;
    BasicColor@ buttonBasicColor_ScrollSelectionForm;
    ItemIndexPaintable@ scrollSelectionFormFormTypeItemIndexPaintable;
    ItemIndexDx@ formTypeItemIndexDx_ScrollSelectionForm;
    ItemPaintable@ paintable;
    int adjustedExtraBorder_ScrollSelectionForm;

    // Java field initializers run after the super constructor
    void jfields_ScrollSelectionForm()
    {
    @this.rectangleCollisionUtil_ScrollSelectionForm = RectangleCollisionUtil::getInstance();
    
    
    
    @this.scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable::getInstance();
    @this.formTypeItemIndexDx_ScrollSelectionForm = ItemIndexDx::getInstance();
    @this.paintable = ItemPaintableFactory::getInstance();
    
    }
    

    ScrollSelectionForm@ jinit_ScrollSelectionForm(string title, ABCustomItem@[]@ items, ItemPaintableFactory@ formPaintableFactory, int border, int adjustedExtraBorder, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        this.jinit_PaintableForm(title, items, backgroundBasicColor, foregroundBasicColor);
        this.jfields_ScrollSelectionForm();
        this.adjustedExtraBorder_ScrollSelectionForm = adjustedExtraBorder;
        @this.buttonBasicColor_ScrollSelectionForm = foregroundBasicColor;
        this.border = border;
        this.halfBorder = (border >>> 1);
        @this.paintable = formPaintableFactory.getInstanceItemPaintable(this);
        return this;
    }
    

    void init(Rectangle@ rectangle, FormType@ formType)
    {
        PaintableForm::init(rectangle, formType);
        FormTypeFactory@ formTypeFactory = FormTypeFactory::getInstance();
        if (formType is formTypeFactory.HORIZONTAL_FORM) {
            @this.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormHorizontalPaintable().jinit_ScrollSelectionFormHorizontalPaintable(this);
            @this.formTypeItemIndexDx_ScrollSelectionForm = ScrollSelectionFormHorizontalDx().jinit_ScrollSelectionFormHorizontalDx(this);
        } else if (formType is formTypeFactory.VERTICAL_CENTER_FORM) {
            @this.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormVerticalPaintable().jinit_ScrollSelectionFormVerticalPaintable(this);
            @this.formTypeItemIndexDx_ScrollSelectionForm = ScrollSelectionFormVericalDx().jinit_ScrollSelectionFormVericalDx(this);
        } else if (formType is formTypeFactory.TEMP_HORIZONTAL_FORM) {
            @this.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormTempHorizontalPaintable().jinit_ScrollSelectionFormTempHorizontalPaintable(this);
            @this.formTypeItemIndexDx_ScrollSelectionForm = ScrollSelectionFormTempHorizontalDx().jinit_ScrollSelectionFormTempHorizontalDx(this);
        } else if (formType is formTypeFactory.NULL_FORM_TYPE) {
        } else {
            jthrow(Exception().jinit_Exception(formTypeFactory.UNK));
        }
    }
    

    int paintItemHorizontal(Graphics@ graphics, int index, ABCustomItem@ item, int x, int y)
    {
        int width = item.getMinimumWidth();
        return x + width + this.border;
    }
    

    int paintItemVertical(Graphics@ graphics, int index, ABCustomItem@ item, int x, int y)
    {
        int height = item.getMinimumHeight();
        return y + height + this.border;
    }
    

    int paintItemTempHorizontal(Graphics@ graphics, int index, ABCustomItem@ item, int x, int y)
    {
        return 0;
    }
    

    int getSelectedIndexForPointHorizontalDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return dx - this.halfBorder;
    }
    

    int getSelectedIndexForPointVerticalDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return dx + this.getDiffX(item);
    }
    

    int getSelectedIndexForPointTempHorizontalDx(int index, ABCustomItem@ item, int dx, int dy)
    {
        return dx + this.getDiffX(item);
    }
    

    int append(ABCustomItem@ item)
    {
        return PaintableForm::append(item);
    }
    

    ABCustomItem@ getSelectedItem(GPoint@ point)
    {
        int index = this.getSelectedIndexForPoint(point);
        if (index != -1) {
            return this.get(index);
        } else {
            return ABCustomItem::getNullInstance();
        }
        return null;
    }
    

    int getItemIndex(ABCustomItem@ item)
    {
        ABCustomItem@ nextItem;
        int size = this.size();
        for (int index = 0; index < size; index++) {
            @nextItem = cast<ABCustomItem>(this.get(index));
            if (nextItem is item) {
                return index;
            }
        }
        return -1;
    }
    

    int getStartIndex()
    {
        return 0;
    }
    

    int getSelectedIndexForPoint(GPoint@ point)
    {
        int start = this.getStartIndex();
        int size = this.size();
        int dx = this.getDx();
        int dy = this.getDy();
        FormTypeFactory@ formTypeFactory = FormTypeFactory::getInstance();
        CommonLabels@ commonLabels = CommonLabels::getInstance();
        StringMaker@ stringBuffer = StringMaker().jinit_StringMaker();
        stringBuffer.append(commonLabels.START_LABEL);
        stringBuffer.appendint(start);
        stringBuffer.append(CommonSeps::getInstance().SPACE);
        stringBuffer.append(commonLabels.TOTAL_LABEL);
        stringBuffer.appendint(size);
        this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm::GET_SELECTED_INDEX);
        ABCustomItem@ item;
        int width = 0;
        int height = 0;
        int diffX = 0;
        for (int index = start; index < size; index++) {
            @item = this.get(index);
            width = item.getMinimumWidth();
            height = item.getMinimumHeight();
            diffX = this.formTypeItemIndexDx_ScrollSelectionForm.getDx(index, item, dx, dy);
            if (this.rectangleCollisionUtil_ScrollSelectionForm.isInside(diffX, dy - this.halfBorder, diffX + width + this.border, dy + height + this.halfBorder + 1, point.getX(), point.getY())) {
                stringBuffer.delete(0, stringBuffer.length());
                stringBuffer.append(commonLabels.ITEM_LABEL);
                stringBuffer.append(item.getLabel());
                stringBuffer.append(CommonSeps::getInstance().SPACE);
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.appendint(index);
                this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm::GET_SELECTED_INDEX);
                return index;
            }
            if (this.formType is formTypeFactory.HORIZONTAL_FORM) {
                dx = dx + width + this.border;
                if (dx > this.rectangle.getMaxX()) {
                    break;
                }
            } else if (this.formType is formTypeFactory.VERTICAL_CENTER_FORM) {
                dy = dy + height + this.border;
                if (dy > this.rectangle.getMaxY()) {
                    break;
                }
            } else if (this.formType is formTypeFactory.NULL_FORM_TYPE) {
            } else {
                jthrow(Exception().jinit_Exception(formTypeFactory.UNK));
            }
        }
        return -1;
    }
    

    int processInputKey(int gameKeyCode)
    {
        FormTypeFactory@ formTypeFactory = FormTypeFactory::getInstance();
        if (this.size() == 0) {
            return -1;
        }
        int index = this.getSelectedIndex();
        if (this.formType is formTypeFactory.HORIZONTAL_FORM || this.formType is formTypeFactory.TEMP_HORIZONTAL_FORM) {
            if (gameKeyCode == Canvas::RIGHT) {
                index++;
            } else if (gameKeyCode == Canvas::LEFT) {
                index--;
            }
        } else if (this.formType is formTypeFactory.VERTICAL_CENTER_FORM) {
            if (gameKeyCode == Canvas::DOWN) {
                index++;
            } else if (gameKeyCode == Canvas::UP) {
                index--;
            }
        } else if (this.formType is formTypeFactory.NULL_FORM_TYPE) {
        } else {
            jthrow(Exception().jinit_Exception(formTypeFactory.UNK));
        }
        int max = this.size() - 1;
        if (index < 0) {
            this.setSelectedIndex(0);
        } else if (index > max) {
            this.setSelectedIndex(max);
        } else {
            this.setSelectedIndex(index);
        }
        return -1;
    }
    

    bool isInForm(GPoint@ point)
    {
        if (this.rectangleCollisionUtil_ScrollSelectionForm.isInside(this.x, this.y - this.halfBorder, this.rectangle.getMaxX() + this.border, this.rectangle.getMaxY() + this.border, point.getX(), point.getY())) {
            this.logUtil.putF(StringMaker().jinit_StringMaker().append(StringUtil::getInstance().toString(point)).append(ScrollSelectionForm::INSIDE_FORM).toString(), this, ScrollSelectionForm::IS_IN_FORM);
            return true;
        }
        return false;
    }
    

    int paintItem(Graphics@ graphics, int index, ABCustomItem@ item, int x, int y)
    {
        item.paintXY(graphics, x, y);
        int width = item.getMinimumWidth();
        int height = item.getMinimumHeight();
        graphics.setColor(this.getButtonBasicColor().intValue());
        int adjustedBorder = 3;
        graphics.drawRect(x - this.halfBorder - adjustedBorder, y - this.halfBorder - adjustedBorder, width + this.border + this.adjustedExtraBorder_ScrollSelectionForm, height + this.border + this.adjustedExtraBorder_ScrollSelectionForm);
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    int paintUnselectedItem(Graphics@ graphics, int index, ABCustomItem@ item, int x, int y)
    {
        graphics.setColor(this.getButtonBasicColor().intValue());
        item.paintUnselected(graphics, x, y);
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    int getDiffX(ABCustomItem@ item)
    {
        return 0;
    }
    

    int getDx()
    {
        return this.x;
    }
    

    int getDy()
    {
        return this.y;
    }
    

    void setButtonBasicColor(BasicColor@ buttonBasicColor)
    {
        @this.buttonBasicColor_ScrollSelectionForm = buttonBasicColor;
    }
    

    BasicColor@ getButtonBasicColor()
    {
        return this.buttonBasicColor_ScrollSelectionForm;
    }
}

namespace ScrollSelectionForm
{
    const string INSIDE_FORM = " inside form";
    const string IS_IN_FORM = "isInForm";
    const string GET_SELECTED_INDEX = "getSelectedIndexForPoint";

    bool jclinitDone;
    void jclinit()
    {
        if (jclinitDone) { return; }
        jclinitDone = true;
        @jcell_NULL_SCROLL_SELECTION_FORM = NullUtil::getInstance().NULL_OBJECT;
        @jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = NullUtil::getInstance().NULL_OBJECT;
        
        
        
    }

    JObject@ jcell_NULL_SCROLL_SELECTION_FORM;
    JObject@ get_NULL_SCROLL_SELECTION_FORM() property { jclinit(); return jcell_NULL_SCROLL_SELECTION_FORM; }
    void set_NULL_SCROLL_SELECTION_FORM(JObject@ value) property { jclinit(); @jcell_NULL_SCROLL_SELECTION_FORM = value; }

    JObject@ jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM;
    JObject@ get_NULL_SCROLL_SELECTION_HORIZONTAL_FORM() property { jclinit(); return jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM; }
    void set_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(JObject@ value) property { jclinit(); @jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = value; }
    

    PaintableForm@ createForm(string title, ABCustomItem@[]@ items, ItemPaintableFactory@ formPaintableFactory, int border, BasicColor@ backgroundBasicColor, BasicColor@ foregroundBasicColor)
    {
        try {
            if (formPaintableFactory is ItemPaintableFactory::getInstance()) {
                return ScrollSelectionForm().jinit_ScrollSelectionForm(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor);
            } else {
                CommonStrings@ commonStrings = CommonStrings::getInstance();
                LogUtil@ logUtil = LogUtil::getInstance();
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION);
                return PaintableForm::getNullPaintableForm();
            }
        } catch {
            Throwable@ jex0 = jcatch();
            if (cast<Exception>(jex0) !is null) {
                Exception@ e = cast<Exception>(jex0);
            CommonStrings@ commonStrings = CommonStrings::getInstance();
            LogUtil@ logUtil = LogUtil::getInstance();
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e);
            return PaintableForm::getNullPaintableForm();
            }
            else { jthrow(jex0); }
        }
        return null;
    }
    

    ScrollSelectionForm@ getNullScrollSelectionForm()
    {
        if (ScrollSelectionForm::NULL_SCROLL_SELECTION_FORM is NullUtil::getInstance().NULL_OBJECT) {
            @ScrollSelectionForm::NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm::createForm(StringUtil::getInstance().EMPTY_STRING, array<ABCustomItem@>(0), ItemPaintableFactory::getInstance(), 0, BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
        }
        return cast<ScrollSelectionForm>(ScrollSelectionForm::NULL_SCROLL_SELECTION_FORM);
    }
    

    ScrollSelectionForm@ getNullScrollSelectionFormHorizontal()
    {
        if (ScrollSelectionForm::NULL_SCROLL_SELECTION_HORIZONTAL_FORM is NullUtil::getInstance().NULL_OBJECT) {
            @ScrollSelectionForm::NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm::createForm(StringUtil::getInstance().EMPTY_STRING, array<ABCustomItem@>(0), ItemPaintableFactory::getInstance(), 0, BasicColorFactory::getInstance().BLACK, BasicColorFactory::getInstance().WHITE);
        }
        return cast<ScrollSelectionForm>(ScrollSelectionForm::NULL_SCROLL_SELECTION_HORIZONTAL_FORM);
    }
}

